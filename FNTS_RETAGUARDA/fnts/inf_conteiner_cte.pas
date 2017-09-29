unit inf_conteiner_cte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sGroupBox, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
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
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, cxTextEdit, DB,
  AdvGlowButton, ExtCtrls, RzPanel, ACBrBase, ACBrEnterTab, Grids,
  Wwdbigrd, Wwdbgrid, Menus, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfrmInf_Conteiner_cte = class(TForm)
    sGroupBox1: TsGroupBox;
    RzPanel2: TRzPanel;
    btincluir: TAdvGlowButton;
    AdvGlowButton14: TAdvGlowButton;
    sGroupBox2: TsGroupBox;
    DataSource1: TDataSource;
    Label1: TLabel;
    edtnumero: TcxDBTextEdit;
    Label2: TLabel;
    data: TcxDBDateEdit;
    wwDBGrid7: TwwDBGrid;
    RzPanel10: TRzPanel;
    AdvGlowButton26: TAdvGlowButton;
    AdvGlowButton27: TAdvGlowButton;
    AdvGlowButton28: TAdvGlowButton;
    DBAdvGlowButton29: TDBAdvGlowButton;
    DBAdvGlowButton30: TDBAdvGlowButton;
    DBAdvGlowButton31: TDBAdvGlowButton;
    DBAdvGlowButton32: TDBAdvGlowButton;
    AdvGlowButton29: TAdvGlowButton;
    ACBrEnterTab1: TACBrEnterTab;
    dslacre: TDataSource;
    pop1: TPopupMenu;
    S1: TMenuItem;
    F1: TMenuItem;
    qrapoio: TZQuery;
    procedure btincluirClick(Sender: TObject);
    procedure AdvGlowButton14Click(Sender: TObject);
    procedure AdvGlowButton26Click(Sender: TObject);
    procedure AdvGlowButton27Click(Sender: TObject);
    procedure AdvGlowButton28Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInf_Conteiner_cte: TfrmInf_Conteiner_cte;

implementation

uses modulo, lacre_conteiner_cte;

{$R *.dfm}

procedure TfrmInf_Conteiner_cte.btincluirClick(Sender: TObject);
begin
  if self.tag = 100 then
  begin
    frmmodulo.qrinf_conteiner.Open;
    frmmodulo.qrinf_conteiner.Edit;
    frmmodulo.qrinf_conteiner.FieldByName('NUMERO').AsString := edtnumero.Text;
    frmmodulo.qrinf_conteiner.FieldByName('DATA_ENTREGA').AsDateTime := data.Date;
    frmmodulo.qrinf_conteiner.FieldByName('filtro').AsInteger := 0;
    frmmodulo.qrinf_conteiner.post;
  end
  else
  begin
    frmmodulo.qrinf_conteiner.FieldByName('codcte').asstring := frmmodulo.qrconhecimento.Fields.fieldbyname('numero').AsString;
    frmmodulo.qrinf_conteiner.FieldByName('filtro').AsInteger := 0;
    frmmodulo.qrinf_conteiner.post;
  end;
  frmmodulo.Conexao.Commit;
  close;
end;

procedure TfrmInf_Conteiner_cte.AdvGlowButton14Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmInf_Conteiner_cte.AdvGlowButton26Click(Sender: TObject);
begin
  frmmodulo.codconteiner := edtnumero.Text;
  frmlacre_conteiner := Tfrmlacre_conteiner.Create(self);
  frmmodulo.qrlacre_conteiner.Open;
  frmmodulo.qrlacre_conteiner.Insert;
  frmmodulo.qrlacre_conteiner.FieldByName('CODCONTEINER').AsString :=  frmmodulo.codconteiner;
  frmlacre_conteiner.ShowModal;

  frmmodulo.qrlacre_conteiner.Close;
  frmmodulo.qrlacre_conteiner.SQL.Clear;
  frmmodulo.qrlacre_conteiner.SQL.Add('select * from INF_LACRE_CONTEINER_CTE where CODCONTEINER = :CODCONTEINER order by codigo');
  frmmodulo.qrlacre_conteiner.ParamByName('CODCONTEINER').AsString := frmmodulo.qrinf_conteiner.fieldbyname('numero').AsString;
  frmmodulo.qrlacre_conteiner.Open;
end;

procedure TfrmInf_Conteiner_cte.AdvGlowButton27Click(Sender: TObject);
var Rec: Integer;
begin
  qrapoio.Close;
  qrapoio.SQL.Clear;
  qrapoio.SQL.Add('select * from INF_LACRE_CONTEINER_CTE where CODCONTEINER = :CODCONTEINER');
  qrapoio.ParamByName('CODCONTEINER').AsString := frmmodulo.qrinf_conteiner.fieldbyname('numero').AsString;
  qrapoio.Open;

  if qrapoio.RecordCount = 0 then Exit;

  rec := frmmodulo.qrlacre_conteiner.RecNo;
  frmlacre_conteiner := Tfrmlacre_conteiner.Create(self);
  frmmodulo.qrlacre_conteiner.Open;
  frmmodulo.qrlacre_conteiner.RecNo := rec;
  frmmodulo.qrlacre_conteiner.Edit;
  frmlacre_conteiner.Tag := 100;
  frmlacre_conteiner.ShowModal;

  frmmodulo.qrlacre_conteiner.Close;
  frmmodulo.qrlacre_conteiner.SQL.Clear;
  frmmodulo.qrlacre_conteiner.SQL.Add('select * from INF_LACRE_CONTEINER_CTE where CODCONTEINER = :CODCONTEINER order by codigo');
  frmmodulo.qrlacre_conteiner.ParamByName('CODCONTEINER').AsString := frmmodulo.qrinf_conteiner.fieldbyname('numero').AsString;
  frmmodulo.qrlacre_conteiner.Open;

end;

procedure TfrmInf_Conteiner_cte.AdvGlowButton28Click(Sender: TObject);
var
  reg_atual, reg_exclui: integer;
begin
  qrapoio.Close;
  qrapoio.SQL.Clear;
  qrapoio.SQL.Add('select * from INF_LACRE_CONTEINER_CTE where CODCONTEINER = :CODCONTEINER');
  qrapoio.ParamByName('CODCONTEINER').AsString := frmmodulo.qrinf_conteiner.fieldbyname('numero').AsString;
  qrapoio.Open;

  if qrapoio.RecordCount = 0 then Exit;

  reg_atual := qrapoio.RecNo;
  reg_exclui := 0;
  qrapoio.First;
  while not qrapoio.Eof do begin
    if qrapoio.FieldByName('filtro').AsInteger = 1 then
    begin
      reg_exclui := reg_exclui + 1;
    end;
    qrapoio.Next;
  end;


  if reg_exclui > 0 then
  begin
    qrapoio.First;
    while not qrapoio.Eof do begin
      if qrapoio.FieldByName('filtro').AsInteger = 1 then
      begin
        frmmodulo.qrlacre_conteiner.Close;
        frmmodulo.qrlacre_conteiner.SQL.Clear;
        frmmodulo.qrlacre_conteiner.SQL.Add('delete from INF_LACRE_CONTEINER_CTE where codigo = :codigo');
        frmmodulo.qrlacre_conteiner.ParamByName('codigo').AsString := qrapoio.fieldbyname('codigo').AsString;
        frmmodulo.qrlacre_conteiner.ExecSQL;
      end;
      qrapoio.Next;
    end;
  end
  else
  begin



  end;


  frmmodulo.Conexao.Commit;

  frmmodulo.qrlacre_conteiner.Close;
  frmmodulo.qrlacre_conteiner.SQL.Clear;
  frmmodulo.qrlacre_conteiner.SQL.Add('select * from INF_LACRE_CONTEINER_CTE where CODCONTEINER = :CODCONTEINER order by codigo');
  frmmodulo.qrlacre_conteiner.ParamByName('CODCONTEINER').AsString := frmmodulo.qrinf_conteiner.fieldbyname('numero').AsString;
  frmmodulo.qrlacre_conteiner.Open;

end;

procedure TfrmInf_Conteiner_cte.FormShow(Sender: TObject);
begin
  frmmodulo.qrlacre_conteiner.Close;
  frmmodulo.qrlacre_conteiner.SQL.Clear;
  frmmodulo.qrlacre_conteiner.SQL.Add('select * from INF_LACRE_CONTEINER_CTE where CODCONTEINER = :CODCONTEINER order by codigo');
  frmmodulo.qrlacre_conteiner.ParamByName('CODCONTEINER').AsString := frmmodulo.qrinf_conteiner.fieldbyname('numero').AsString;
  frmmodulo.qrlacre_conteiner.Open;
end;

end.

