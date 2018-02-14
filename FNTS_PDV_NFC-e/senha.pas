unit senha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, AdvOfficeImage, ExtCtrls,
  AdvReflectionLabel, RzLabel, RzBckgnd, pngimage, AdvReflectionImage, jpeg,
  acPNG, Vcl.Buttons, dxGDIPlusClasses;

type
  Tfrmsenha = class(TForm)
    Image1: TImage;
    img1: TImage;
    Label2: TLabel;
    ed_senha: TRzEdit;
    Label1: TLabel;
    ed_codigo: TRzEdit;
    Image2: TImage;
    btn_entrar: TSpeedButton;
    btn_cancelar: TSpeedButton;
    pnl1: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ed_senhaKeyPress(Sender: TObject; var Key: Char);
    procedure ed_codigoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_entrarClick(Sender: TObject);
  private
    { Private declarations }
    function GeraMD5PAFECF: String;
  public
    { Public declarations }
    Function LogarAutomaticamente: Boolean;
  end;

var
  frmsenha: Tfrmsenha;

implementation

uses funcoes, modulo, principal, md52, IniFiles, UFuncoes;
// unit de leitura do arquivo INI;

{$R *.dfm}

procedure Tfrmsenha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmsenha.ed_senhaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if ed_codigo.Text = '' then exit;
    if ed_senha.text = '' then exit;

    if not Executa_Login(ed_codigo.text, ed_senha.text, sfuncao_senha) then
    begin
      application.messagebox('Acesso não autorizado!', 'Erro', mb_ok + mb_iconerror);
      busuario_Autenticado := false;
      exit;
    end
    else
    begin
      busuario_Autenticado := true;
      close;
    end;
  end
  else
  begin
    if key = #27 then
    begin
       busuario_Autenticado := False;
      close;
    end
    else
    begin

    end;
  end;
end;
procedure Tfrmsenha.btn_cancelarClick(Sender: TObject);
begin
frmsenha.close;
end;
procedure Tfrmsenha.btn_entrarClick(Sender: TObject);
begin
   if not Executa_Login(ed_codigo.Text, ed_senha.Text, sfuncao_senha) then
    begin
      application.messagebox('Acesso não autorizado!', 'Erro',
        mb_ok + mb_iconerror);
      busuario_Autenticado := false;
      exit;
    end
    else
      begin
       busuario_Autenticado := true;
        close;
      end;
  end;
procedure Tfrmsenha.ed_codigoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if ed_codigo.text = '' then
    begin
      exit;
    end
    else
      Perform(wm_nextdlgctl, 0, 0);
  end
  else
    if key = #27 then
    begin
      busuario_Autenticado := False;
      close
    end
    else
      if (key in ['0'..'9', 'a'..'z', 'A'..'Z']) then
     //
      else
        if (key = #7) or (key = #8) or (key = #32) then
       //
        else
          abort;
end;

procedure Tfrmsenha.FormShow(Sender: TObject);
begin
  Brush.Style := bsClear;
  ed_codigo.SetFocus;
  // GeraMD5PAFECF;
end;

function Tfrmsenha.GeraMD5PAFECF: String;
var
  Arquivo: TextFile;
  NomeArq, ArqTexto, aMD5: String;
  F: TSearchRec;
  Ret: Integer;
  Arquivo_ini: TIniFile; // nome do arquivo .ini
begin
  try
    // Apaga arquivo anterior
    ArqTexto := ExtractFilePath(application.ExeName) + 'ArqMD5.txt';
    if FileExists(ArqTexto) then
      DeleteFile(ArqTexto);
    // cria o arquivo TXT na mesma pasta do sistema
    AssignFile(Arquivo, ArqTexto);
    ReWrite(Arquivo);
    // lista todos os arquivo exe da pasta do aplicativo e gera o MF5
    try
      // executáveis
      Ret := FindFirst(ExtractFilePath(application.ExeName) + '\*.exe',
        faAnyFile, F);
      while Ret = 0 do
      begin
        if F.Attr and faDirectory <> faDirectory then
        begin
          NomeArq := ExtractFilePath(application.ExeName) + F.Name;
          aMD5 := MD5Print(MD5File(NomeArq));
          WriteLn(Arquivo, NomeArq + ' - ' + aMD5);
        end;
        Ret := FindNext(F);
      end;
      // DLL's
      Ret := FindFirst(ExtractFilePath(application.ExeName) + '\cfg\*.dll',
        faAnyFile, F);
      while Ret = 0 do
      begin
        if F.Attr and faDirectory <> faDirectory then
        begin
          NomeArq := ExtractFilePath(application.ExeName) + F.Name;
          aMD5 := MD5Print(MD5File(NomeArq));
          WriteLn(Arquivo, NomeArq + ' - ' + aMD5);
        end;
        Ret := FindNext(F);
      end;
    finally
      FindClose(F);
    end;
    Closefile(Arquivo);
    // gera MD5 do arquivo texto
  finally
    Result := MD5Print(MD5File(ArqTexto));
  end;
  // abrir arquivo .ini
  Arquivo_ini := TIniFile.Create('.\cfg\Paf.ini');
  // MD5
  Arquivo_ini.WriteString('D37DEB63', '2329383C', Cript('C', Result));

end;

function Tfrmsenha.LogarAutomaticamente: Boolean;
var
  sUsuario, sSenha: string;
begin
  busuario_autenticado := false;

  sUsuario := LerIni(sConfiguracoes, 'LOGIN', 'USUARIO', '');
  sSenha := Cript('D', LerIni(sConfiguracoes, 'LOGIN', 'SENHA', ''));



  if not Executa_Login(sUsuario, sSenha, sfuncao_senha) then
  begin
    application.messagebox('Acesso não autorizado!' + #13#10 + 'Identificação do usuario ou senha incorreta.', 'Erro', mb_ok + mb_iconerror);
    exit;
  end
  else
  begin
    busuario_Autenticado := true;
    close;
  end;

end;

end.
