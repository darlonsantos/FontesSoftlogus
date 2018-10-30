unit AtualizarBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvMetroButton, Vcl.StdCtrls,
  AdvGlowButton, AdvSmoothPanel, AdvSmoothExpanderPanel, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfrmAtualizacaoBase = class(TForm)
    AdvSmoothExpanderPanel2: TAdvSmoothExpanderPanel;
    bt_nfe_status: TAdvGlowButton;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    lblVersao: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    qryAtualiza: TZQuery;
    Label1: TLabel;
    qryConsulta: TZQuery;
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure bt_nfe_statusClick(Sender: TObject);
  private
    { Private declarations }
  public
   procedure atualiza;
   procedure grava;
  end;

var
  frmAtualizacaoBase: TfrmAtualizacaoBase;

implementation

{$R *.dfm}

uses modulo;

procedure TfrmAtualizacaoBase.AdvMetroButton1Click(Sender: TObject);
begin
Close;
end;

procedure TfrmAtualizacaoBase.atualiza;
begin

  with qryAtualiza do
   begin
     // atualiza tabela CL00005
      Active := False;
       SQL.Clear;
       SQL.Add('SELECT * FROM RDB$RELATION_FIELDS');
       SQL.Add('WHERE RDB$RELATION_NAME = ''CL00005''');
       SQL.Add('AND RDB$FIELD_NAME = ''UNIDADE''');
       SQL.Add('ORDER BY RDB$FIELD_POSITION');
       ExecSQL;
           if IsEmpty then
           begin
          Active := False;
           SQL.Clear;
           SQL.Add('ALTER TABLE cl00005  ADD  UNIDADE VARCHAR(80)');
          grava;
          end
            else
            begin
              Label1.Caption := 'Campo já existe no banco de dados.';
            end;

        // atualiza a tabela C000025
       Active := False;
       SQL.Clear;
       SQL.Add('SELECT * FROM RDB$RELATION_FIELDS');
       SQL.Add('WHERE RDB$RELATION_NAME = ''C000025''');
       SQL.Add('AND RDB$FIELD_NAME = ''COMPLEMENTO_PROD''');
       SQL.Add('ORDER BY RDB$FIELD_POSITION');
       ExecSQL;
           if IsEmpty then
           begin
          Active := False;
           SQL.Clear;
           SQL.Add('ALTER TABLE C000025  ADD  COMPLEMENTO_PROD VARCHAR(200)');
          grava;
          end
            else
            begin
              Label1.Caption := 'Campo já existe no banco de dados.';
            end;


          // atualiza a tabela C000061
       Active := False;
       SQL.Clear;
       SQL.Add('SELECT * FROM RDB$RELATION_FIELDS');
       SQL.Add('WHERE RDB$RELATION_NAME = ''C000061''');
       SQL.Add('AND RDB$FIELD_NAME = ''COMPLEMENTO_PROD''');
       SQL.Add('ORDER BY RDB$FIELD_POSITION');
       ExecSQL;
           if IsEmpty then
           begin
          Active := False;
           SQL.Clear;
           SQL.Add('ALTER TABLE C000061  ADD  COMPLEMENTO_PROD VARCHAR(200)');
          grava;
          end
            else
            begin
              Label1.Caption := 'Campo já existe no banco de dados.';
            end;


          // atualiza a tabela C000062
       Active := False;
       SQL.Clear;
       SQL.Add('SELECT * FROM RDB$RELATION_FIELDS');
       SQL.Add('WHERE RDB$RELATION_NAME = ''C000062''');
       SQL.Add('AND RDB$FIELD_NAME = ''COMPLEMENTO_PROD''');
       SQL.Add('ORDER BY RDB$FIELD_POSITION');
       ExecSQL;
           if IsEmpty then
           begin
          Active := False;
           SQL.Clear;
           SQL.Add('ALTER TABLE C000062  ADD  COMPLEMENTO_PROD VARCHAR(200)');
          grava;
          end
            else
            begin
              Label1.Caption := 'Campo já existe no banco de dados.';
            end;


            // atualiza a tabela C000057
       Active := False;
       SQL.Clear;
       SQL.Add('SELECT * FROM RDB$RELATION_FIELDS');
       SQL.Add('WHERE RDB$RELATION_NAME = ''C000057''');
       SQL.Add('AND RDB$FIELD_NAME = ''TAMANHO''');
       SQL.Add('ORDER BY RDB$FIELD_POSITION');
       ExecSQL;
           if IsEmpty then
           begin
          Active := False;
           SQL.Clear;
           SQL.Add('ALTER TABLE C000057  ADD  TAMANHO VARCHAR(20)');

          grava;
          end
            else
            begin
              Label1.Caption := 'Campo já existe no banco de dados.';
            end;


                  // atualiza a tabela C000057
       Active := False;
       SQL.Clear;
       SQL.Add('SELECT * FROM RDB$RELATION_FIELDS');
       SQL.Add('WHERE RDB$RELATION_NAME = ''C000057''');
       SQL.Add('AND RDB$FIELD_NAME = ''COR''');
       SQL.Add('ORDER BY RDB$FIELD_POSITION');
       ExecSQL;
           if IsEmpty then
           begin
          Active := False;
           SQL.Clear;
           SQL.Add('ALTER TABLE C000057  ADD  COR VARCHAR(15)');
           grava;
          end
            else
            begin
              Label1.Caption := 'Campo já existe no banco de dados.';
            end;


   end;
end;
procedure TfrmAtualizacaoBase.bt_nfe_statusClick(Sender: TObject);
begin
  atualiza;
end;

{ TODO : DARLON SANTOS }
procedure TfrmAtualizacaoBase.grava;
begin
    Try
          frmmodulo.db.StartTransaction;
         qryAtualiza.ExecSQL;
         frmmodulo.db.Commit;
         Label1.Caption := 'Tabelas atualizadas com sucesso.';
      except
          Label1.Caption := 'Banco de dados já esta atualizado.';
          frmmodulo.db.Rollback;
      end;
end;

end.
