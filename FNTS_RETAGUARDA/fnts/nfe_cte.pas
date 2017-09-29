unit nfe_cte;

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
  cxTextEdit, cxDBEdit, DB, ACBrBase, ACBrEnterTab, dxSkinOffice2013White;

type
  Tfrmnfe_cte = class(TForm)
    RzPanel2: TRzPanel;
    btincluir: TAdvGlowButton;
    AdvGlowButton14: TAdvGlowButton;
    sGroupBox1: TsGroupBox;
    Label1: TLabel;
    edtchave: TcxDBTextEdit;
    Label2: TLabel;
    edtpin: TcxDBTextEdit;
    ACBrEnterTab1: TACBrEnterTab;
    DataSource1: TDataSource;
    procedure btincluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AdvGlowButton14Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnfe_cte: Tfrmnfe_cte;

implementation

uses modulo, principal;

{$R *.dfm}

procedure Tfrmnfe_cte.btincluirClick(Sender: TObject);
begin
  if self.tag = 100 then
  begin
    frmmodulo.qrnfe_cte.Open;
    frmmodulo.qrnfe_cte.Edit;
    frmmodulo.qrnfe_cte.FieldByName('CHAVE_ACESSO').asstring := edtchave.Text;
    frmmodulo.qrnfe_cte.FieldByName('PIN').asstring := edtpin.Text;
    frmmodulo.qrnfe_cte.FieldByName('filtro').AsInteger := 0;
    frmmodulo.qrnfe_cte.post;
  end
  else
  begin
    frmmodulo.qrnfe_cte.FieldByName('codcte').asstring := frmmodulo.qrconhecimento.Fields.fieldbyname('numero').AsString;
    frmmodulo.qrnfe_cte.FieldByName('filtro').AsInteger := 0;
    frmmodulo.qrnfe_cte.post;
  end;
  frmmodulo.Conexao.Commit;
  close;
end;

procedure Tfrmnfe_cte.FormShow(Sender: TObject);
begin
  if self.tag = 100 then btincluir.caption := 'Salvar';
  edtchave.SetFocus
end;

procedure Tfrmnfe_cte.AdvGlowButton14Click(Sender: TObject);
begin
  Close
end;

end.

