unit comp_cte;

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
  cxMaskEdit, cxDropDownEdit, cxCalc, cxDBEdit, cxTextEdit, DB, ACBrBase,
  ACBrEnterTab, dxSkinOffice2013White;

type
  Tfrmcomp_cte = class(TForm)
    RzPanel2: TRzPanel;
    btincluir: TAdvGlowButton;
    AdvGlowButton14: TAdvGlowButton;
    sGroupBox1: TsGroupBox;
    DataSource1: TDataSource;
    Label1: TLabel;
    edtnome: TcxDBTextEdit;
    Label2: TLabel;
    edtvalor: TcxDBCalcEdit;
    ACBrEnterTab1: TACBrEnterTab;
    procedure AdvGlowButton14Click(Sender: TObject);
    procedure btincluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcomp_cte: Tfrmcomp_cte;

implementation

uses modulo;

{$R *.dfm}

procedure Tfrmcomp_cte.AdvGlowButton14Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmcomp_cte.btincluirClick(Sender: TObject);
begin
  if self.tag = 100 then
  begin
    frmmodulo.qrcomp_cte.Open;
    frmmodulo.qrcomp_cte.Edit;
    frmmodulo.qrcomp_cte.FieldByName('NOME').asstring := edtnome.Text;
    frmmodulo.qrcomp_cte.FieldByName('VALOR').Value := edtvalor.Value;
    frmmodulo.qrcomp_cte.FieldByName('filtro').AsInteger := 0;
    frmmodulo.qrcomp_cte.post;
  end
  else
  begin
    frmmodulo.qrcomp_cte.FieldByName('codcte').asstring := frmmodulo.qrconhecimento.Fields.fieldbyname('numero').AsString;
    frmmodulo.qrcomp_cte.FieldByName('filtro').AsInteger := 0;
    frmmodulo.qrcomp_cte.post;
  end;
  frmmodulo.Conexao.Commit;
  close;
end;

end.

