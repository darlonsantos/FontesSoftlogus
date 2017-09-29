unit threadSendMail;

interface

uses classes, sysutils, smtpsend,forms;

type

  TSendMailThread = class(TThread)
  private
    FException: Exception;
    // FOwner: NotaFiscal;
    procedure DoHandleException;
  public
    OcorreramErros: Boolean;
    Terminado: Boolean;
    smtp: TSMTPSend;
    sFrom: String;
    sTo: String;
    sCC: TStrings;
    slmsg_Lines: TStrings;
    constructor Create;
    destructor Destroy; override;
  protected
    procedure Execute; override;
    procedure HandleException;
  end;

implementation

{ TSendMailThread }

constructor TSendMailThread.Create;
begin

  smtp := TSMTPSend.Create;
  slmsg_Lines := TStringList.Create;
  sCC := TStringList.Create;
  sFrom := '';
  sTo := '';

  FreeOnTerminate := True;

  inherited Create(True);

end;

destructor TSendMailThread.Destroy;
begin

  inherited;
end;

procedure TSendMailThread.DoHandleException;
begin

//  FOwner.Alertas := FException.Message;

  if FException is Exception then
    Application.ShowException(FException)
  else
    SysUtils.ShowException(FException, nil);

end;

procedure TSendMailThread.Execute;
var
  I: integer;
begin
  inherited;

  try
    Terminado := False;
    try
      if not smtp.Login() then
        raise Exception.Create('SMTP ERROR: Login:' + smtp.EnhCodeString + sLineBreak + smtp.FullResult.Text);

      if not smtp.MailFrom(sFrom, Length(sFrom)) then
        raise Exception.Create('SMTP ERROR: MailFrom:' + smtp.EnhCodeString + sLineBreak + smtp.FullResult.Text);

      if not smtp.MailTo(sTo) then
        raise Exception.Create('SMTP ERROR: MailTo:' + smtp.EnhCodeString + sLineBreak + smtp.FullResult.Text);

      if (sCC <> nil) then
      begin
        for I := 0 to sCC.Count - 1 do
        begin
          if not smtp.MailTo(sCC.Strings[I]) then
            raise Exception.Create('SMTP ERROR: MailTo:' + smtp.EnhCodeString + sLineBreak + smtp.FullResult.Text);
        end;
      end;

      if not smtp.MailData(slmsg_Lines) then
        raise Exception.Create('SMTP ERROR: MailData:' + smtp.EnhCodeString + sLineBreak + smtp.FullResult.Text);

      if not smtp.Logout() then
        raise Exception.Create('SMTP ERROR: Logout:' + smtp.EnhCodeString + sLineBreak + smtp.FullResult.Text);
    finally
      try
        smtp.Sock.CloseSocket;
      except
      end;
      Terminado := True;
    end;
  except
    Terminado := True; // Alterado por Italo em 21/09/2010
    HandleException;
  end;

end;

procedure TSendMailThread.HandleException;
begin
  FException := Exception(ExceptObject);
  try
    // Não mostra mensagens de EAbort
    if not (FException is EAbort) then
      Synchronize(DoHandleException);
  finally
    FException := nil;
  end;
end;

end.
