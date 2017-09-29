unit ContaFlex;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Wwkeycb, TFlatPanelUnit, AdvGlowButton, ExtCtrls,
  Grids, Wwdbigrd, Wwdbgrid, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Menus, CurrEdit, Mask, ToolEdit;

type
  TFrmContaFlex = class(TForm)
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    bitbtn5: TAdvGlowButton;
    blocalizar: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    plocalizar: TFlatPanel;
    Label5: TLabel;
    loc: TwwIncrementalSearch;
    wwDBGrid1: TwwDBGrid;
    qrContaFlex: TZQuery;
    dsContaFlex: TDataSource;
    qrContaFlexCODIGOVENDEDOR: TStringField;
    qrContaFlexNUMEROMOVIMENTO: TStringField;
    qrContaFlexDATAMOVIMENTO: TDateTimeField;
    qrContaFlexVALOR: TFloatField;
    qrContaFlexTIPOMOVIMENTO: TStringField;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    FlatPanel2: TFlatPanel;
    Label3: TLabel;
    Label2: TLabel;
    Bevel4: TBevel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    FlatPanel1: TFlatPanel;
    Label1: TLabel;
    rsaldo: TRxCalcEdit;
    bfiltrar: TAdvGlowButton;
    POP3: TPopupMenu;
    InciodoNome1: TMenuItem;
    PartedoNome1: TMenuItem;
    FecharLocalizao1: TMenuItem;
    procedure Gravar1Click(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmContaFlex: TFrmContaFlex;
  comando : string;


implementation

uses modulo, ContaFlex_Lancamento;

{$R *.dfm}

procedure TFrmContaFlex.Gravar1Click(Sender: TObject);
begin
  frmmodulo.Conexao.Commit;
  pgravar.Visible := false;
//  PopupMenu := pop1;
  bincluir.setfocus;
end;

procedure TFrmContaFlex.Cancelar1Click(Sender: TObject);
begin
  pgravar.Visible := false;
//  PopupMenu := pop1;
  bincluir.setfocus;
  comando := '';
end;

procedure TFrmContaFlex.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure TFrmContaFlex.bincluirClick(Sender: TObject);
begin
    FrmContaFlex_Lancamento := TFrmContaFlex_Lancamento.Create(self);
    FrmContaFlex.ShowModal;
end;

end.
