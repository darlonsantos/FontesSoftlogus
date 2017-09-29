unit Bicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, RzEdit, RzDBEdit, RzDBBnEd, StdCtrls, Mask, DBCtrls,
  ExtCtrls, TFlatPanelUnit, AdvGlowButton;

type
  TfrmBicos = class(TForm)
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    blocalizar: TAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    bfechar: TAdvGlowButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    pficha: TFlatPanel;
    Label14: TLabel;
    Bevel1: TBevel;
    dsbicos: TDataSource;
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Relatrios1: TMenuItem;
    Fechar1: TMenuItem;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    Label6: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    eproduto: TRzDBButtonEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    epreco: TRzDBNumericEdit;
    Label5: TLabel;
    eencerrante: TRzDBNumericEdit;
    TCombust: TEdit;
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure eprodutoButtonClick(Sender: TObject);
    procedure eprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure eprecoKeyPress(Sender: TObject; var Key: Char);
    procedure eencerranteKeyPress(Sender: TObject; var Key: Char);
    procedure eprodutoEnter(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure eprecoEnter(Sender: TObject);
    procedure eencerranteEnter(Sender: TObject);
    procedure eprodutoExit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure eprecoExit(Sender: TObject);
    procedure eencerranteExit(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBicos: TfrmBicos;

implementation

uses modulo, principal, xloc_combustivel;

{$R *.dfm}

procedure TfrmBicos.bincluirClick(Sender: TObject);
begin
  frmmodulo.qrBicos.insert;
  frmmodulo.qrBicos.FieldByName('codigo').AsString := frmprincipal.codifica('BICOS1');
  pficha.Enabled := true;
  eproduto.SetFocus;
  pgravar.Visible := true;

  PopupMenu := pop2;

end;

procedure TfrmBicos.balterarClick(Sender: TObject);
begin
  IF eproduto.Text <> '' THEN
  BEGIN


    frmmodulo.qrBicos.Edit;
//    pficha.Enabled := true;
    eproduto.SetFocus;
    pgravar.Visible := true;
    PopupMenu := pop2;
  END
  ELSE
  BEGIN
    Showmessage('Nenhum registro foi selecionado!');
  END;

end;

procedure TfrmBicos.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir registro',4) then
  begin
    frmmodulo.qrBicos.Delete;
    frmmodulo.Conexao.commit;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;

end;

procedure TfrmBicos.bfecharClick(Sender: TObject);
begin
  Close;

end;

procedure TfrmBicos.FormShow(Sender: TObject);
begin
  pgravar.visible := false;
  pgravar.Align := alClient;

  frmmodulo.qrBicos.close;
  frmmodulo.qrBicos.SQL.clear;
  frmmodulo.qrBicos.SQL.add('select * from cadbico order by codigo');
  frmmodulo.qrBicos.open;
  frmmodulo.qrBicos.first;
//  pficha.Enabled := false;
  bincluir.SetFocus;


end;

procedure TfrmBicos.bgravarClick(Sender: TObject);
begin

   if eproduto.text = '' then
   begin
     application.messagebox('Favor informar um nome válido para este registro!','Atenção',mb_ok+mb_iconerror);
     dbedit2.setfocus;
     exit;
   end;


  if (frmmodulo.qrBicos.State = dsinsert) or (frmmodulo.qrBicos.State = dsedit) then
  begin
      frmmodulo.qrBicos.post;
  end;

  frmmodulo.Conexao.Commit;
 // pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;

end;

procedure TfrmBicos.bcancelarClick(Sender: TObject);
begin
  if (frmmodulo.qrBicos.State = dsinsert) or (frmmodulo.qrBicos.State = dsedit) then
  begin
        if (frmmodulo.qrBicos.State = dsinsert) then
        begin
          frmprincipal.qrmestre.close;
          frmprincipal.qrmestre.sql.clear;
          frmprincipal.qrmestre.sql.add('update c000000 set sequencia = sequencia - 1 where codigo = ''BICOS''');
          frmprincipal.qrmestre.ExecSQL;
        end;

      frmmodulo.qrCombustivel.cancel;
      frmmodulo.Conexao.commit;

  end;

//  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;
//  comando := '';

end;

procedure TfrmBicos.eprodutoButtonClick(Sender: TObject);
begin
  IF frmmodulo.qrBicos.State <> DSINSERT THEN frmmodulo.qrBicos.Edit;

  frmxloc_combustivel := tfrmxloc_combustivel.Create(self);
  frmxloc_combustivel.ShowModal;
  frmmodulo.qrBicos.fieldbyname('cod_produto').asstring := frmxloc_combustivel.query.fieldbyname('codigo').asstring;
  frmmodulo.qrBicos.fieldbyname('preco').AsFloat := frmxloc_combustivel.query.fieldbyname('pr_venda').AsFloat;
//  lbcombust.Caption := xprod_escolh2;
  TCombust.Text := xprod_escolh2;
end;

procedure TfrmBicos.eprodutoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmBicos.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmBicos.eprecoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmBicos.eencerranteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmBicos.eprodutoEnter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmBicos.DBEdit2Enter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmBicos.eprecoEnter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmBicos.eencerranteEnter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmBicos.eprodutoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmBicos.DBEdit2Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmBicos.eprecoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmBicos.eencerranteExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmBicos.DBEdit3Enter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmBicos.DBEdit3Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmBicos.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

end.
