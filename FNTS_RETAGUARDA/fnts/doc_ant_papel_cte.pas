unit doc_ant_papel_cte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sGroupBox, AdvGlowButton, ExtCtrls, RzPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp,
  dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  DBCtrls, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, cxTextEdit, DB,
  Menus, ACBrBase, ACBrEnterTab;

type
  TfrmDoc_papel_cte = class(TForm)
    RzPanel2: TRzPanel;
    btincluir: TAdvGlowButton;
    AdvGlowButton14: TAdvGlowButton;
    sGroupBox1: TsGroupBox;
    DataSource1: TDataSource;
    Label1: TLabel;
    serie: TcxDBTextEdit;
    Label2: TLabel;
    subserie: TcxDBTextEdit;
    Label3: TLabel;
    numerodoc: TcxDBTextEdit;
    Label4: TLabel;
    data: TcxDBDateEdit;
    tipodoc: TDBComboBox;
    Label5: TLabel;
    ACBrEnterTab1: TACBrEnterTab;
    pop1: TPopupMenu;
    procedure btincluirClick(Sender: TObject);
    procedure AdvGlowButton14Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDoc_papel_cte: TfrmDoc_papel_cte;

implementation

uses modulo;

{$R *.dfm}

procedure TfrmDoc_papel_cte.btincluirClick(Sender: TObject);
begin
  if self.tag = 100 then
  begin
    frmmodulo.qrdoc_ant_papel.Open;
    frmmodulo.qrdoc_ant_papel.Edit;
    frmmodulo.qrdoc_ant_papel.FieldByName('TIPO_DOC').AsString := tipodoc.Items[tipodoc.itemIndex];
    frmmodulo.qrdoc_ant_papel.FieldByName('SERIE').AsString := serie.Text;
    frmmodulo.qrdoc_ant_papel.FieldByName('SUB_SERIE').AsString := subserie.Text;
    frmmodulo.qrdoc_ant_papel.FieldByName('NUMERO_DOC').AsString := numerodoc.Text;
    frmmodulo.qrdoc_ant_papel.FieldByName('DATA_EMISSAO').AsDateTime := data.Date;
    frmmodulo.qrdoc_ant_papel.FieldByName('filtro').AsInteger := 0;
    frmmodulo.qrdoc_ant_papel.post;
  end
  else
  begin
    frmmodulo.qrdoc_ant_papel.FieldByName('codcte').asstring := frmmodulo.qrconhecimento.Fields.fieldbyname('numero').AsString;
    frmmodulo.qrdoc_ant_papel.FieldByName('filtro').AsInteger := 0;
    frmmodulo.qrdoc_ant_papel.post;
  end;
  frmmodulo.Conexao.Commit;
  close;
end;

procedure TfrmDoc_papel_cte.AdvGlowButton14Click(Sender: TObject);
begin
  close;
end;

end.

