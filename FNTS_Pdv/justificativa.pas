unit justificativa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel, acPNG;

type
  Tfrmjustificativa = class(TForm)
    edTexto: TMemo;
    img1: TImage;
    bfechar1: TAdvMetroButton;
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure bfechar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmjustificativa: Tfrmjustificativa;

implementation

{$R *.dfm}

procedure Tfrmjustificativa.AdvMetroButton1Click(Sender: TObject);
begin
  if Length(edTexto.Lines.Text) <= 15  then begin
    Application.MessageBox('A Justificativa tem que ter pelo menos 15 caracteres','Atenção!',MB_ICONINFORMATION);
    edTexto.SetFocus;
    exit;
  end;
  Close;
end;

procedure Tfrmjustificativa.bfechar1Click(Sender: TObject);
begin
close;
end;

end.
