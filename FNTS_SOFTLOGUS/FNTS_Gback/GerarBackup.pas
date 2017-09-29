unit GerarBackup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, IBServices, Spin, Buttons, ExtCtrls;

type
  TFGerarBackup = class(TForm)
    BTGeraBack: TButton;
    Button2: TButton;
    Memo1: TMemo;
    IBBackupService1: TIBBackupService;
    IBConfigService1: TIBConfigService;
    GroupBox2: TGroupBox;
    CBRecoLixo: TCheckBox;
    CBIgnoChec: TCheckBox;
    CBIgnoLimb: TCheckBox;
    CBTran: TCheckBox;
    SDArquBack: TSaveDialog;
    CBDetalhes: TCheckBox;
    procedure Button2Click(Sender: TObject);
    procedure BTGeraBackClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    procedure CarregaConfiguracao;
    procedure SalvaConfiguracao;
    function BoolToStr(const aBoolean: Boolean; const ValoVerd: String = 'Sim';
      const ValoFals: String = 'Não'): String;
    function StrToBool(const Valor: string; const ValoVerd: String='Sim'): Boolean;
  public
    { Public declarations }
  end;

var
  FGerarBackup: TFGerarBackup;

implementation

uses DataModule, IBDatabase, Principal;

{$R *.dfm}

procedure TFGerarBackup.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TFGerarBackup.BTGeraBackClick(Sender: TObject);
begin
  try
    if not SDArquBack.Execute then//se o usuário não informar onde será salvo o arquivo de backup
      Exit;                       //cancela o procedimento
    Memo1.Clear;
    BTGeraBack.Enabled:=False;
    Memo1.Lines.Add('Preparando para gerar o backup...');
    Memo1.Lines.Add('');

    with IBBackupService1 do
    begin
      DMBanco.IBDB.Connected:=False;//desconecta da base de dados
      DatabaseName:=FPrincipal.EBase.Text;//caminho da base de dados
      ServerName:=FPrincipal.EServ.Text;//nome do servidor
      BackupFile.Clear;
      BackupFile.Add(SDArquBack.FileName);//adiciona o caminho do arquivo de backup escolhido pelo usuário
      Protocol:=TCP;//protocolo de conexão
      Params.Clear;
      Params.Add('user_name=SYSDBA');//nome de usuário
      Params.Add('password=masterkey');//senha do usuário

      Options:=[];//limpa a propriedade option
      {o bloco de if abaixo esta adicionando as opções de restauração de acordo com o que o usuário escolheu.
      Após esta listagem você encontra um link para um outro artigo onde você encontra mais informações
      sobre essas e outras opções de restauração}
      if CBIgnoChec.Checked then
        Options:=Options+[IgnoreChecksums];
      if CBIgnoLimb.Checked then
        Options:=Options+[IgnoreLimbo];
      if not CBRecoLixo.Checked then
        Options:=Options+[NoGarbageCollection];
      if not CBTran.Checked then
        Options:=Options+[NonTransportable];

      {a propriedade verbose do TIBBackupService especifica
      se durante o processo de backup será retornado para a
      aplicação o detalhamento da execução}
      Verbose:=CBDetalhes.Checked;

      Memo1.Lines.Add('  Ignorar checksum: '+BoolToStr(CBIgnoChec.Checked));
      Memo1.Lines.Add('  Ignorar transações em limbo: '+BoolToStr(CBIgnoLimb.Checked));
      Memo1.Lines.Add('  Coletar lixo: '+BoolToStr(CBRecoLixo.Checked));
      Memo1.Lines.Add('  Formato transportável: '+BoolToStr(CBTran.Checked));
      Memo1.Lines.Add('  Verbose: '+BoolToStr(CBTran.Checked));
      Memo1.Lines.Add('  Nome do servidor: '+ServerName);
      Memo1.Lines.Add('');
      Active:=True;//ativa o serviço de backup, mais ainda não inicia.
      Memo1.Lines.Add('');
      Memo1.Lines.Add('/***INICIO***\');
      Application.ProcessMessages;
      Memo1.Lines.Add('');
      try
        ServiceStart;//inicia o processo de backup
        while not Eof do
        begin
          {conforme o backup vai sendo executado o nos podemos pegar os detalhes da sua execução
          através da função GetNextLine}
          Memo1.Lines.Add(GetNextLine);
        end;
      finally
      end;
      Active:=False;//desativa o serviço de backup
      Memo1.Lines.Add('');
      Memo1.Lines.Add('/****FIM****\');
    end;
    Memo1.Lines.Add(''); Memo1.Lines.Add('');
    Memo1.Lines.Add('Backup concluído.');
    DMBanco.IBDB.Connected:=True;//conecta o sistema na base de dados
    BTGeraBack.Enabled:=True;
  except
    on E: Exception do
    begin
      Memo1.Lines.Add('Ocorreu um erro inesperado. O backup não foi concluído.');
      Memo1.Lines.Add('Informações da exceção:');
      Memo1.Lines.Add('  '+E.Message);
      DMBanco.IBDB.Connected:=True;//conecta o sistema na base de dados
      BTGeraBack.Enabled:=True;
    end;
  end;
end;

procedure TFGerarBackup.CarregaConfiguracao;
var
  vList: TStringList;
begin
  if FileExists(ExtractFilePath(Application.ExeName)+'GerarBackup.cfg') then
  begin
    vList:=TStringList.Create;
    vList.LoadFromFile(ExtractFilePath(Application.ExeName)+'GerarBackup.cfg');
    CBRecoLixo.Checked:=StrToBool(vList[0]);
    CBTran.Checked:=StrToBool(vList[1]);
    CBIgnoChec.Checked:=StrToBool(vList[2]);
    CBIgnoLimb.Checked:=StrToBool(vList[3]);
    FreeAndNil(vList);
  end;
end;

procedure TFGerarBackup.SalvaConfiguracao;
var
  vList: TStringList;
begin
  vList:=TStringList.Create;
  vList.Add(BoolToStr(CBRecoLixo.Checked));
  vList.Add(BoolToStr(CBTran.Checked));
  vList.Add(BoolToStr(CBIgnoChec.Checked));
  vList.Add(BoolToStr(CBIgnoLimb.Checked));
  vList.SaveToFile(ExtractFilePath(Application.ExeName)+'GerarBackup.cfg');
  FreeAndNil(vList);
end;

procedure TFGerarBackup.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SalvaConfiguracao;
end;

function TFGerarBackup.BoolToStr(const aBoolean: Boolean;
  const ValoVerd: String = 'Sim'; const ValoFals: String = 'Não'): String;
begin
  if aBoolean then
    Result:=ValoVerd
  else
    Result:=ValoFals;
end;

function TFGerarBackup.StrToBool(const Valor: string;
  const ValoVerd: String='Sim'): Boolean;
begin
  Result:=Valor=ValoVerd;
end;

procedure TFGerarBackup.FormShow(Sender: TObject);
begin
  CarregaConfiguracao;
end;

end.

