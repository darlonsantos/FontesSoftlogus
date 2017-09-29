unit doc_ant_cte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, ExtCtrls, RzPanel, StdCtrls, sGroupBox, Menus,
  Mask, DBCtrls, DB, ACBrBase, ACBrEnterTab, ACBrValidador, Grids,
  Wwdbigrd, Wwdbgrid, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfrmDoc_ante_cte = class(TForm)
    sGroupBox1: TsGroupBox;
    RzPanel2: TRzPanel;
    btincluir: TAdvGlowButton;
    AdvGlowButton14: TAdvGlowButton;
    sGroupBox2: TsGroupBox;
    sGroupBox3: TsGroupBox;
    sGroupBox4: TsGroupBox;
    DataSource1: TDataSource;
    Label1: TLabel;
    edtcnpj: TDBEdit;
    Label2: TLabel;
    edtie: TDBEdit;
    Label3: TLabel;
    edtuf: TDBEdit;
    Label4: TLabel;
    edtnome: TDBEdit;
    pop1: TPopupMenu;
    S1: TMenuItem;
    S2: TMenuItem;
    ACBrEnterTab1: TACBrEnterTab;
    ACBrValidador1: TACBrValidador;
    RzPanel12: TRzPanel;
    AdvGlowButton34: TAdvGlowButton;
    AdvGlowButton35: TAdvGlowButton;
    AdvGlowButton36: TAdvGlowButton;
    DBAdvGlowButton37: TDBAdvGlowButton;
    DBAdvGlowButton38: TDBAdvGlowButton;
    DBAdvGlowButton39: TDBAdvGlowButton;
    DBAdvGlowButton40: TDBAdvGlowButton;
    AdvGlowButton37: TAdvGlowButton;
    wwDBGrid9: TwwDBGrid;
    RzPanel1: TRzPanel;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    wwDBGrid1: TwwDBGrid;
    dsdoc_papel: TDataSource;
    dsdoc_nfe: TDataSource;
    qrapoio: TZQuery;
    procedure AdvGlowButton14Click(Sender: TObject);
    procedure btincluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AdvGlowButton34Click(Sender: TObject);
    procedure AdvGlowButton35Click(Sender: TObject);
    procedure AdvGlowButton36Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure wwDBGrid9DblClick(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDoc_ante_cte: TfrmDoc_ante_cte;

implementation

uses modulo, doc_ant_papel_cte, doc_ant_nfe;

{$R *.dfm}

procedure TfrmDoc_ante_cte.AdvGlowButton14Click(Sender: TObject);
begin
  close;
end;

procedure TfrmDoc_ante_cte.btincluirClick(Sender: TObject);
begin
  if self.tag = 100 then
  begin
    frmmodulo.qrdocs_ant_cte.Open;
    frmmodulo.qrdocs_ant_cte.Edit;
    frmmodulo.qrdocs_ant_cte.FieldByName('CPF_CNPJ').AsString := edtcnpj.Text;
    frmmodulo.qrdocs_ant_cte.FieldByName('IE').AsString := edtie.Text;
    frmmodulo.qrdocs_ant_cte.FieldByName('UF').AsString := edtuf.Text;
    frmmodulo.qrdocs_ant_cte.FieldByName('NOME').AsString := edtnome.Text;
    frmmodulo.qrdocs_ant_cte.FieldByName('filtro').AsInteger := 0;
    frmmodulo.qrdocs_ant_cte.post;
  end
  else
  begin
    frmmodulo.qrdocs_ant_cte.FieldByName('codcte').asstring := frmmodulo.qrconhecimento.Fields.fieldbyname('numero').AsString;
    frmmodulo.qrdocs_ant_cte.FieldByName('filtro').AsInteger := 0;
    frmmodulo.qrdocs_ant_cte.post;
  end;
  frmmodulo.Conexao.Commit;
  close;
end;

procedure TfrmDoc_ante_cte.FormShow(Sender: TObject);
begin
  begin
    frmmodulo.qrdoc_ant_papel.Close;
    frmmodulo.qrdoc_ant_papel.SQL.Clear;
    frmmodulo.qrdoc_ant_papel.SQL.Add('select * from docs_anterior_papel_cte where codcte = :codcte order by codigo');
    frmmodulo.qrdoc_ant_papel.ParamByName('codcte').AsString := frmmodulo.qrconhecimento.fieldbyname('numero').AsString;
    frmmodulo.qrdoc_ant_papel.Open;
  end;
  begin
    frmmodulo.qrdoc_ant_nfe.Close;
    frmmodulo.qrdoc_ant_nfe.SQL.Clear;
    frmmodulo.qrdoc_ant_nfe.SQL.Add('select * from DOCS_ANTERIOR_NFE_CTE where codcte = :codcte order by codigo');
    frmmodulo.qrdoc_ant_nfe.ParamByName('codcte').AsString := frmmodulo.qrconhecimento.fieldbyname('numero').AsString;
    frmmodulo.qrdoc_ant_nfe.Open;
  end;

end;

procedure TfrmDoc_ante_cte.AdvGlowButton34Click(Sender: TObject);
begin
  frmDoc_papel_cte := TfrmDoc_papel_cte.Create(self);
  frmmodulo.qrdoc_ant_papel.Open;
  frmmodulo.qrdoc_ant_papel.Insert;
  frmDoc_papel_cte.ShowModal;

  frmmodulo.qrdoc_ant_papel.Close;
  frmmodulo.qrdoc_ant_papel.SQL.Clear;
  frmmodulo.qrdoc_ant_papel.SQL.Add('select * from docs_anterior_papel_cte where codcte = :codcte order by codigo');
  frmmodulo.qrdoc_ant_papel.ParamByName('codcte').AsString := frmmodulo.qrconhecimento.fieldbyname('numero').AsString;
  frmmodulo.qrdoc_ant_papel.Open;
end;

procedure TfrmDoc_ante_cte.AdvGlowButton35Click(Sender: TObject);
var Rec: Integer;
begin
  qrapoio.Close;
  qrapoio.SQL.Clear;
  qrapoio.SQL.Add('select * from docs_anterior_papel_cte where codcte = :codcte');
  qrapoio.ParamByName('codcte').AsString := frmmodulo.qrconhecimento.fieldbyname('numero').AsString;
  qrapoio.Open;

  if qrapoio.RecordCount = 0 then Exit;

  rec := frmmodulo.qrdoc_ant_papel.RecNo;
  frmDoc_papel_cte := TfrmDoc_papel_cte.Create(self);
  frmmodulo.qrdoc_ant_papel.Open;
  frmmodulo.qrdoc_ant_papel.RecNo := rec;
  frmmodulo.qrdoc_ant_papel.Edit;
  frmDoc_papel_cte.Tag := 100;
  frmDoc_papel_cte.ShowModal;

  frmmodulo.qrdoc_ant_papel.Close;
  frmmodulo.qrdoc_ant_papel.SQL.Clear;
  frmmodulo.qrdoc_ant_papel.SQL.Add('select * from docs_anterior_papel_cte where codcte = :codcte order by codigo');
  frmmodulo.qrdoc_ant_papel.ParamByName('codcte').AsString := frmmodulo.qrconhecimento.fieldbyname('numero').AsString;
  frmmodulo.qrdoc_ant_papel.Open;
end;

procedure TfrmDoc_ante_cte.AdvGlowButton36Click(Sender: TObject);
var
  reg_atual, reg_exclui: integer;
begin
  qrapoio.Close;
  qrapoio.SQL.Clear;
  qrapoio.SQL.Add('select * from docs_anterior_papel_cte where codcte = :codcte');
  qrapoio.ParamByName('codcte').AsString := frmmodulo.qrconhecimento.fieldbyname('numero').AsString;
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
        frmmodulo.qrdoc_ant_papel.Close;
        frmmodulo.qrdoc_ant_papel.SQL.Clear;
        frmmodulo.qrdoc_ant_papel.SQL.Add('delete from docs_anterior_papel_cte where codigo = :codigo');
        frmmodulo.qrdoc_ant_papel.ParamByName('codigo').AsString := qrapoio.fieldbyname('codigo').AsString;
        frmmodulo.qrdoc_ant_papel.ExecSQL;
      end;
      qrapoio.Next;
    end;
  end
  else
  begin

  end;

  frmmodulo.Conexao.Commit;

  frmmodulo.qrdoc_ant_papel.Close;
  frmmodulo.qrdoc_ant_papel.SQL.Clear;
  frmmodulo.qrdoc_ant_papel.SQL.Add('select * from docs_anterior_papel_cte where codcte = :codcte order by codigo');
  frmmodulo.qrdoc_ant_papel.ParamByName('codcte').AsString := frmmodulo.qrconhecimento.fieldbyname('numero').AsString;
  frmmodulo.qrdoc_ant_papel.Open;

end;


procedure TfrmDoc_ante_cte.AdvGlowButton1Click(Sender: TObject);
begin
  frmDoc_ant_nfe := TfrmDoc_ant_nfe.Create(self);
  frmmodulo.qrdoc_ant_nfe.Open;
  frmmodulo.qrdoc_ant_nfe.Insert;
  frmDoc_ant_nfe.ShowModal;

  frmmodulo.qrdoc_ant_nfe.Close;
  frmmodulo.qrdoc_ant_nfe.SQL.Clear;
  frmmodulo.qrdoc_ant_nfe.SQL.Add('select * from DOCS_ANTERIOR_NFE_CTE where codcte = :codcte order by codigo');
  frmmodulo.qrdoc_ant_nfe.ParamByName('codcte').AsString := frmmodulo.qrconhecimento.fieldbyname('numero').AsString;
  frmmodulo.qrdoc_ant_nfe.Open;
end;

procedure TfrmDoc_ante_cte.AdvGlowButton2Click(Sender: TObject);
var Rec: Integer;
begin
  qrapoio.Close;
  qrapoio.SQL.Clear;
  qrapoio.SQL.Add('select * from DOCS_ANTERIOR_NFE_CTE where codcte = :codcte');
  qrapoio.ParamByName('codcte').AsString := frmmodulo.qrconhecimento.fieldbyname('numero').AsString;
  qrapoio.Open;

  if qrapoio.RecordCount = 0 then Exit;

  rec := frmmodulo.qrdoc_ant_nfe.RecNo;
  frmDoc_ant_nfe := TfrmDoc_ant_nfe.Create(self);
  frmmodulo.qrdoc_ant_nfe.Open;
  frmmodulo.qrdoc_ant_nfe.RecNo := rec;
  frmmodulo.qrdoc_ant_nfe.Edit;
  frmDoc_ant_nfe.Tag := 100;
  frmDoc_ant_nfe.ShowModal;

  frmmodulo.qrdoc_ant_nfe.Close;
  frmmodulo.qrdoc_ant_nfe.SQL.Clear;
  frmmodulo.qrdoc_ant_nfe.SQL.Add('select * from DOCS_ANTERIOR_NFE_CTE where codcte = :codcte order by codigo');
  frmmodulo.qrdoc_ant_nfe.ParamByName('codcte').AsString := frmmodulo.qrconhecimento.fieldbyname('numero').AsString;
  frmmodulo.qrdoc_ant_nfe.Open;
end;

procedure TfrmDoc_ante_cte.AdvGlowButton3Click(Sender: TObject);
var
  reg_atual, reg_exclui: integer;
begin
  qrapoio.Close;
  qrapoio.SQL.Clear;
  qrapoio.SQL.Add('select * from DOCS_ANTERIOR_NFE_CTE where codcte = :codcte');
  qrapoio.ParamByName('codcte').AsString := frmmodulo.qrconhecimento.fieldbyname('numero').AsString;
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
        frmmodulo.qrdoc_ant_nfe.Close;
        frmmodulo.qrdoc_ant_nfe.SQL.Clear;
        frmmodulo.qrdoc_ant_nfe.SQL.Add('delete from DOCS_ANTERIOR_NFE_CTE where codigo = :codigo');
        frmmodulo.qrdoc_ant_nfe.ParamByName('codigo').AsString := qrapoio.fieldbyname('codigo').AsString;
        frmmodulo.qrdoc_ant_nfe.ExecSQL;
      end;
      qrapoio.Next;
    end;
  end
  else
  begin

  end;

  frmmodulo.Conexao.Commit;

  frmmodulo.qrdoc_ant_nfe.Close;
  frmmodulo.qrdoc_ant_nfe.SQL.Clear;
  frmmodulo.qrdoc_ant_nfe.SQL.Add('select * from DOCS_ANTERIOR_NFE_CTE where codcte = :codcte order by codigo');
  frmmodulo.qrdoc_ant_nfe.ParamByName('codcte').AsString := frmmodulo.qrconhecimento.fieldbyname('numero').AsString;
  frmmodulo.qrdoc_ant_nfe.Open;

end;


procedure TfrmDoc_ante_cte.wwDBGrid9DblClick(Sender: TObject);
begin
 if frmmodulo.qrdoc_ant_papel.RecordCount = 0 then Exit;

  try
    begin
      if frmmodulo.qrdoc_ant_papel.FieldByName('filtro').AsInteger = 1 then
      begin
        frmmodulo.qrdoc_ant_papel.Edit;
        frmmodulo.qrdoc_ant_papel.fieldbyname('filtro').AsInteger := 0;
        frmmodulo.qrdoc_ant_papel.Post;
        frmmodulo.Conexao.Commit;
        frmmodulo.qrdoc_ant_papel.close;
        frmmodulo.qrdoc_ant_papel.Open;

      end
      else
      begin
        if frmmodulo.qrdoc_ant_papel.FieldByName('filtro').AsInteger = 0 then
        begin
          frmmodulo.qrdoc_ant_papel.Edit;
          frmmodulo.qrdoc_ant_papel.fieldbyname('filtro').AsInteger := 1;
          frmmodulo.qrdoc_ant_papel.Post;
          frmmodulo.Conexao.Commit;
          frmmodulo.qrdoc_ant_papel.close;
          frmmodulo.qrdoc_ant_papel.Open;

        end;
      end;
    end

  except

  end;
end;

procedure TfrmDoc_ante_cte.wwDBGrid1DblClick(Sender: TObject);
begin
 if frmmodulo.qrdoc_ant_nfe.RecordCount = 0 then Exit;

  try
    begin
      if frmmodulo.qrdoc_ant_nfe.FieldByName('filtro').AsInteger = 1 then
      begin
        frmmodulo.qrdoc_ant_nfe.Edit;
        frmmodulo.qrdoc_ant_nfe.fieldbyname('filtro').AsInteger := 0;
        frmmodulo.qrdoc_ant_nfe.Post;
        frmmodulo.Conexao.Commit;
        frmmodulo.qrdoc_ant_nfe.close;
        frmmodulo.qrdoc_ant_nfe.Open;

      end
      else
      begin
        if frmmodulo.qrdoc_ant_nfe.FieldByName('filtro').AsInteger = 0 then
        begin
          frmmodulo.qrdoc_ant_nfe.Edit;
          frmmodulo.qrdoc_ant_nfe.fieldbyname('filtro').AsInteger := 1;
          frmmodulo.qrdoc_ant_nfe.Post;
          frmmodulo.Conexao.Commit;
          frmmodulo.qrdoc_ant_nfe.close;
          frmmodulo.qrdoc_ant_nfe.Open;

        end;
      end;
    end

  except

  end;
end;

end.

