unit acesso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, TFlatPanelUnit;

type
  Tfrmacesso = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    ESENHA: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    LSENHA: TEdit;
    PFUNCAO: TFlatPanel;
    GroupBox3: TGroupBox;
    lcontrasenha: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure LSENHAExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmacesso: Tfrmacesso;
  senha_atual: string;

implementation

uses modulo, principal;

{$R *.dfm}

procedure Tfrmacesso.BitBtn1Click(Sender: TObject);
var senha: string;
begin



  senha := esenha.Text;

  if FRMPRINCIPAL.CRIPT('D', lcontraSENHA.caption) = ESENHA.TEXT then
  begin
    FRMMODULO.qrcaixa_operador.FIELdBYNAME('situacao_atual').asstring := FRMPRINCIPAL.Cript('C', DATETOSTR(incmonth(DATE)) + DATETOSTR(DATE));
    close;
  end
  else
  begin
    application.messagebox('Chave de habilitação inválida!', 'Aviso', mb_ok + MB_ICONERROR);
  end;
end;

procedure Tfrmacesso.LSENHAExit(Sender: TObject);
var I: INTEGER;
  X, proxima_data: string;
begin
  X := LSENHA.Text;
  X := INTTOSTR((TRUNC((STRTOINT(COPY(X, 1, 9)) - 101006 * 0.7) / 0.148981) + (STRTOINT(COPY(DATETOSTR(DATE), 4, 2))) * 131 - STRTOINT(COPY(DATETOSTR(DATE), 1, 2))));
  x := inttostr(trunc((strtoint(x) * 15422) / (strtoint(copy(timetostr(time), 4, 2)) / strtoint(copy(timetostr(time), 1, 2)))));
  lcontrasenha.caption := frmprincipal.Cript('C', COPY(X, 1, 5));

  caption := COPY(X, 1, 5);

end;

end.
