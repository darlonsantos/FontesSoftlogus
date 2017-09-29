unit CPF;

interface

uses
  JPEG,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ACBrBase, ACBrSocket, ACBrConsultaCPF;

type
  TFCPF = class(TForm)
    Panel2: TPanel;
    Label3: TLabel;
    Label12: TLabel;
    EditRazaoSocial: TEdit;
    Panel1: TPanel;
    Label1: TLabel;
    EditCaptcha: TEdit;
    Label14: TLabel;
    Timer1: TTimer;
    EditCNPJ: TEdit;
    Panel3: TPanel;
    Image1: TImage;
    LabAtualizarCaptcha: TLabel;
    EditSituacao: TEdit;
    EdtDigitoVerificador: TEdit;
    RzLabel1: TLabel;
    EdtCodCtrlControle: TEdit;
    RzLabel2: TLabel;
    EdtEmissao: TEdit;
    RzLabel3: TLabel;
    ACBrConsultaCPF1: TACBrConsultaCPF;
    btnConsultar: TButton;
    procedure LabAtualizarCaptchaClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
  private

  public
  end;

var
  FCPF: TFCPF;

implementation

{$R *.dfm}

procedure TFCPF.btnConsultarClick(Sender: TObject);
begin
  if EditCaptcha.Text <> '' then
  begin
    if ACBrConsultaCPF1.Consulta(EditCNPJ.Text, EditCaptcha.Text) then
    begin
      EditRazaoSocial.Text      := ACBrConsultaCPF1.Nome;
      EditSituacao.Text         := ACBrConsultaCPF1.Situacao;
      EdtEmissao.Text           := ACBrConsultaCPF1.Emissao;
      EdtCodCtrlControle.Text   := ACBrConsultaCPF1.CodCtrlControle;
      EdtDigitoVerificador.Text := ACBrConsultaCPF1.DigitoVerificador;
    end;
  end
  else
  begin
    ShowMessage('É necessário digitar o captcha.');
    EditCaptcha.SetFocus;
  end;
end;

procedure TFCPF.FormShow(Sender: TObject);
begin
  Timer1.Enabled := True;
  EditCaptcha.SetFocus;
end;

procedure TFCPF.LabAtualizarCaptchaClick(Sender: TObject);
var
  Stream: TMemoryStream;
  Jpg: TJPEGImage;
begin
  Stream := TMemoryStream.Create;
  Jpg := TJPEGImage.Create;
  try
    ACBrConsultaCPF1.Captcha(Stream);
    Jpg.LoadFromStream(Stream);
    Image1.Picture.Assign(Jpg);

    EditCaptcha.Clear;
    EditCaptcha.SetFocus;
  finally
    Stream.Free;
    Jpg.Free;
  end;
end;

procedure TFCPF.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  LabAtualizarCaptchaClick(LabAtualizarCaptcha);
  EditCaptcha.SetFocus;
end;

end.
