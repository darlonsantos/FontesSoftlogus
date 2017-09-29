unit uDmConexao;

interface

uses
  Windows, SysUtils, Classes, DBXpress, DB, SqlExpr, Messages, Variants,
  Graphics, Controls, Forms, Dialogs, StdCtrls, Mask, DBCtrls,
  ExtCtrls, ComCtrls, IniFiles, FMTBcd, DBClient, Provider;


type
  TDmConexao = class(TDataModule)
    ConexaoDBX: TSQLConnection;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    ArqIni : TIniFile;
    sPath, sUser, sPass : String;
    procedure CriaArqIni;
    procedure LeArqIni;
  public
    { Public declarations }
  end;

var
  DmConexao: TDmConexao;

implementation

Uses uLibrary;

{$R *.dfm}

procedure TDmConexao.CriaArqIni;
begin
  ArqIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'config.ini');
  ArqINI.WriteString('DADOS','PATH',ExtractFilePath(Application.ExeName)+'Dados\EMPRESAR.GDB');
  ArqINI.WriteString('DADOS','USUARIO','SYSDBA');
  ArqINI.WriteString('DADOS','SENHA','masterkey');
  ArqIni.Free;
end;

procedure TDmConexao.LeArqIni;
begin
  ArqIni    := TIniFile.Create(ExtractFilePath(Application.ExeName)+'config.ini');
  sPath     := ArqINI.ReadString('DADOS','PATH',ExtractFilePath(Application.ExeName)+'Dados\EMPRESAR.GDB');
  sUser     := ArqINI.ReadString('DADOS','USUARIO','SYSDBA');
  sPass     := ArqINI.ReadString('DADOS','SENHA','masterkey');
  ArqIni.Free;
end;

procedure TDmConexao.DataModuleCreate(Sender: TObject);
var aux : String;
begin
  //
  try
    // verifica arquivo de configuração de acesso aos dados
    aux := ExtractFilePath(Application.ExeName)+'config.ini';
    if not FileExists(aux) then
       CriaArqIni;
    LeArqIni;
    // realiza conexao com o banco de dados
    ConexaoDBX.Connected := false;
    ConexaoDBX.ConnectionName      := 'GeradorSPED';
    ConexaoDBX.DriverName          := 'UIB FireBird15';
    ConexaoDBX.GetDriverFunc       := 'getSQLDriverINTERBASE';
    ConexaoDBX.KeepConnection      := true;
    ConexaoDBX.LibraryName         := 'dbexpUIBfire15.dll';
    ConexaoDBX.LoadParamsOnConnect := false;
    ConexaoDBX.LoginPrompt         := false;
    ConexaoDBX.VendorLib           := 'fbclient.dll';
    ConexaoDBX.Params.Values['Database']  := sPath;
    ConexaoDBX.Params.Values['User_Name'] := sUser;
    ConexaoDBX.Params.Values['Password']  := sPass;
    ConexaoDBX.Connected := true;
    // atribui variavel de controle
    ConexaoDados := ConexaoDBX;
  except
    MessageDlg('Erro ao conectar banco de dados. Verifique!!!', mtWarning, [mbOK], 0);
    Application.Terminate;
  end;

end;

procedure TDmConexao.DataModuleDestroy(Sender: TObject);
begin
  ConexaoDBX.Connected := false;

end;

end.
