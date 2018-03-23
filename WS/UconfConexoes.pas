unit UconfConexoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrmConexoes = class(TForm)
    pn: TPanel;
    GroupBox1: TGroupBox;
    edtProvider: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    EdtServidor: TEdit;
    Label3: TLabel;
    edtPorta: TEdit;
    Label4: TLabel;
    edtBancoDados: TEdit;
    Label6: TLabel;
    edtUsuario: TEdit;
    Label7: TLabel;
    edtSenha: TEdit;
    Button1: TButton;
    Button2: TButton;
    ckMostraSenha: TCheckBox;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    procedure ckMostraSenhaClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConexoes: TfrmConexoes;

implementation

{$R *.dfm}

uses conexoes;

procedure TfrmConexoes.Button1Click(Sender: TObject);
begin
 { TODO : Grava as informações do banco de dados externo }
    dm.qryConfBanco.Close;
    dm.qryConfBanco.SQL.Clear;
     dm.qryConfBanco.SQL.Add('insert into soft_conf ( soft_conf_provider, soft_conf_servidor, soft_conf_porta, soft_conf_usuario, soft_conf_senha, soft_conf_banco) VALUES' +
     '(:psoft_conf_provider, :psoft_conf_servidor, :psoft_conf_porta, :psoft_conf_usuario, :psoft_conf_senha, :psoft_conf_banco)');
    if edtProvider.Text = '' then
     begin
       ShowMessage('O campo Provider é de preenchimento obrigatório.');
       Exit;
     end
     else
      begin
       dm.qryConfBanco.ParamByName('psoft_conf_provider').AsString := edtProvider.Text;
      end;
      if EdtServidor.Text = '' then
      begin
         ShowMessage('O campo Servidor é de preenchimento obrigatório.');
         Exit;
      end
      else
       begin
      dm.qryConfBanco.ParamByName('psoft_conf_servidor').AsString := EdtServidor.Text;
      end;
       if edtPorta.Text = '' then
       begin
        ShowMessage('O campo Porta é de preenchimento obrigatório.');
        Exit;
       end
        else
         begin
         dm.qryConfBanco.ParamByName('psoft_conf_porta').AsString  := edtPorta.Text;
         end;
     if edtUsuario.Text = '' then
      begin
       ShowMessage('O campo Úsuario é de preenchimento obrigatório.');
       Exit;
      end
       else
       begin
         dm.qryConfBanco.ParamByName('psoft_conf_usuario').AsString  := edtUsuario.Text;
       end;
       if edtSenha.Text = '' then
        begin
            ShowMessage('O campo senha é de preenchimento obrigatório.');
            Exit;
      end
       else
        begin
        dm.qryConfBanco.ParamByName('psoft_conf_senha').AsString   := edtSenha.Text;
        end;
      if  edtBancoDados.Text = '' then
       begin
         ShowMessage('O campo Banco de dados é de preenchimento obrigatório.');
         Exit;
       end
        else
         begin
        dm.qryConfBanco.ParamByName('psoft_conf_banco').AsString   := edtBancoDados.Text;
       end;
     dm.qryConfBanco.ExecSQL;
     edtProvider.Enabled := false;
     EdtServidor.Enabled := false;
     edtPorta.Enabled := false;
     edtBancoDados.Enabled := false;
     edtUsuario.Enabled := false;
     edtSenha.Enabled := false;
     edtProvider.Text := '';
     EdtServidor.Text := '';
     edtPorta.Text := '';
     edtBancoDados.Text := '';
     edtUsuario.Text := '';
     edtSenha.Text := '';
     ShowMessage('Banco de dados gravado com sucesso.');

     { TODO : Carrega as informações do banco na query }
     dm.qryConfBanco.Close;
     dm.qryConfBanco.SQL.Clear;
     dm.qryConfBanco.SQL.Add('  SELECT ' +
           'soft_conf.soft_conf_provider, ' +
           'soft_conf.soft_conf_servidor, ' +
           'soft_conf.soft_conf_porta ' +
           'FROM soft_conf');
     dm.qryConfBanco.Open;
     dm.qryConfBanco.First;


end;

procedure TfrmConexoes.ckMostraSenhaClick(Sender: TObject);
begin
if ckMostraSenha.Checked = true then
  begin
    edtSenha.PasswordChar := #0 ;
  end
  else if ckMostraSenha.Checked = false then
   begin
      edtSenha.PasswordChar := '*';
   end;
end;

procedure TfrmConexoes.FormShow(Sender: TObject);
begin
{ TODO : Carrega as informações do banco na query }
     begin
     dm.qryConfBanco.Close;
     dm.qryConfBanco.SQL.Clear;
     dm.qryConfBanco.SQL.Add('  SELECT ' +
           'soft_conf.soft_conf_provider, ' +
           'soft_conf.soft_conf_servidor, ' +
           'soft_conf.soft_conf_porta ' +
           'FROM soft_conf');
     dm.qryConfBanco.Open;
     dm.qryConfBanco.First;
     end;
end;

end.
