unit versao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvMetroButton, Vcl.StdCtrls,
  AdvSmoothPanel, AdvSmoothExpanderPanel, JvExControls, JvgProgress,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdTime,
  IdUnixTime, AdvGlowButton, IdHTTP, Vcl.ComCtrls, IdAntiFreezeBase,
  Vcl.IdAntiFreeze;



type
  TfrmVersao = class(TForm)
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    lblVersao: TLabel;
    AdvSmoothExpanderPanel2: TAdvSmoothExpanderPanel;
    bt_nfe_status: TAdvGlowButton;
    AdvMetroButton1: TAdvMetroButton;
    sophiaSoares: TIdHTTP;
    dlgSave: TSaveDialog;
    ProgressBar1: TProgressBar;
    edtUrl: TEdit;
    lblStatus: TLabel;
    Label2: TLabel;
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure sophiaSoaresWork(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Int64);
    procedure sophiaSoaresWorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
    procedure sophiaSoaresWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
    procedure bt_nfe_statusClick(Sender: TObject);
  private
public

    function RetornaFluxo(ValorAtual: real): string;
    function ConvertePorcentagem(ValorMaximo, ValorAtual: real): string;
  end;

var
  frmVersao: TfrmVersao;

implementation



uses WinInet, principal, ShellApi;

{$R *.dfm}


procedure TfrmVersao.AdvMetroButton1Click(Sender: TObject);
begin
close;
end;


procedure TfrmVersao.bt_nfe_statusClick(Sender: TObject);
var
  fileDownload : TFileStream;
begin
     dlgSave.Filter := 'Softlogus' + ExtractFileExt(edtUrl.Text) + '|*' + ExtractFileExt(edtUrl.Text);
     dlgSave.FileName := 'Softlogus';
     if dlgSave.Execute then
     begin
         fileDownload := TFileStream.Create(dlgSave.FileName + ExtractFileExt(edtUrl.Text), fmCreate);
         try
             ProgressBar1.Visible := True;
             sophiaSoares.Get(edtUrl.Text, fileDownload);
          finally
             FreeAndNil(fileDownload);
         end;
     end;
end;   //darlon santos
function TfrmVersao.ConvertePorcentagem(ValorMaximo, ValorAtual: real): string;
var
  resultado: Real;
begin
    resultado := ((ValorAtual * 100) / ValorMaximo);
    Result    := FormatFloat('0%', resultado);
end;

function TfrmVersao.RetornaFluxo(ValorAtual: real): string;
var
   resultado : real;
begin
     resultado := ((ValorAtual / 1024) / 1024);
     Result    := FormatFloat('0.000 KBs', resultado);
end;

procedure TfrmVersao.sophiaSoaresWork(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCount: Int64);
begin
   ProgressBar1.Position := AWorkCount;
   lblStatus.Caption    := 'Download em andamente, Aguarde...! ' + RetornaFluxo(AWorkCount);
  // lblVersao.Caption := 'Download em ... ' + ConvertePorcentagem(ProgressBar1.Position, AWorkCount);
end;
procedure TfrmVersao.sophiaSoaresWorkBegin(ASender: TObject;
  AWorkMode: TWorkMode; AWorkCountMax: Int64);
begin
ProgressBar1.Max := AWorkCountMax;
end;

procedure TfrmVersao.sophiaSoaresWorkEnd(ASender: TObject;
  AWorkMode: TWorkMode);
begin
     ProgressBar1.Position := 0;
     lblVersao.Caption := 'Atualização do Sistema';
     lblStatus.Caption    := 'Download Finalizado ...';
    application.messagebox('É necessário reiniciar o sistema para verificar atualizações!',
    'Aviso', mb_ok+MB_ICONINFORMATION);
     AdvMetroButton1Click(Self);
end;

end.
