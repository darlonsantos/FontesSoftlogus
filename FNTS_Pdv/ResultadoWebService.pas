unit ResultadoWebService;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls,
  AdvMetroButton, Vcl.StdCtrls, AdvSmoothPanel, AdvSmoothExpanderPanel,
  Vcl.OleCtrls, SHDocVw, acPNG;

type
  TfrmResultadoWebService = class(TForm)
    pnTexto: TPanel;
    WBResposta: TWebBrowser;
    bfechar1: TAdvMetroButton;
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure bfechar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmResultadoWebService: TfrmResultadoWebService;

implementation

{$R *.dfm}

procedure TfrmResultadoWebService.AdvMetroButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmResultadoWebService.bfechar1Click(Sender: TObject);
begin
Close;
end;

end.
