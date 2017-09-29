unit doc_ant_nfe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, ExtCtrls, RzPanel, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxTextEdit, cxDBEdit,
  StdCtrls, DB, sGroupBox, Menus, dxSkinOffice2013White;

type
  TfrmDoc_ant_nfe = class(TForm)
    RzPanel2: TRzPanel;
    btincluir: TAdvGlowButton;
    AdvGlowButton14: TAdvGlowButton;
    sGroupBox1: TsGroupBox;
    DataSource1: TDataSource;
    Label1: TLabel;
    edtchave: TcxDBTextEdit;
    pop1: TPopupMenu;
    S1: TMenuItem;
    S2: TMenuItem;
    procedure btincluirClick(Sender: TObject);
    procedure AdvGlowButton14Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDoc_ant_nfe: TfrmDoc_ant_nfe;

implementation

uses modulo;

{$R *.dfm}

procedure TfrmDoc_ant_nfe.btincluirClick(Sender: TObject);
begin
  if self.tag = 100 then
  begin
    frmmodulo.qrdoc_ant_nfe.Open;
    frmmodulo.qrdoc_ant_nfe.Edit;
    frmmodulo.qrdoc_ant_nfe.FieldByName('CHAVE_ACESSO').AsString := edtchave.Text;
    frmmodulo.qrdoc_ant_nfe.FieldByName('filtro').AsInteger := 0;
    frmmodulo.qrdoc_ant_nfe.post;
  end
  else
  begin
    frmmodulo.qrdoc_ant_nfe.FieldByName('codcte').asstring := frmmodulo.qrconhecimento.Fields.fieldbyname('numero').AsString;
    frmmodulo.qrdoc_ant_nfe.FieldByName('filtro').AsInteger := 0;
    frmmodulo.qrdoc_ant_nfe.post;
  end;
  frmmodulo.Conexao.Commit;
  close;
end;

procedure TfrmDoc_ant_nfe.AdvGlowButton14Click(Sender: TObject);
begin
  close;
end;

end.

