unit config_balanca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, registry, XPMan, IniFiles;

type
  Tfrmconfig_balanca = class(TForm)
    GroupBox6: TGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    cb_bal_time_out: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    edtModelo: TEdit;
    edtPorta: TEdit;
    edtDataBits: TEdit;
    edtBaudRate: TEdit;
    edtStopBits: TEdit;
    edtParity: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
  procedure GravaIni(Balanca: string);
 public
    { Public declarations }
  end;

var
  frmconfig_balanca: Tfrmconfig_balanca;

implementation

uses modulo;

{$R *.dfm}

procedure Tfrmconfig_balanca.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmconfig_balanca.FormCreate(Sender: TObject);
var
  ArqIni: TIniFile;
begin
 ArqIni := TIniFile.Create('C:\Softlogus\PDV\CFG\balanca.ini');
   try
  edtModelo.Text    :=  ArqIni.ReadString('Modelo', 'Modelo', '');
  edtPorta.Text     :=  ArqIni.ReadString('Porta', 'Porta', '');
   edtDataBits.Text :=  ArqIni.ReadString('DataBits', 'DataBits', ' ');
  edtBaudRate.Text  :=  ArqIni.ReadString('BaudRate', 'BaudRate', '');
  edtStopBits.Text  :=  ArqIni.ReadString('StopBits', 'StopBits', '');
  edtParity.Text    :=  ArqIni.ReadString('Parity', 'Parity','' );
  cb_bal_time_out.Text := ArqIni.ReadString('Time-Out', 'Time-Out', '');
   finally
    ArqIni.Free;
  end;
end;
procedure Tfrmconfig_balanca.GravaIni(Balanca: string);
var
  ArqIni: TIniFile;
begin
 ArqIni := TIniFile.Create('C:\Softlogus\PDV\CFG\balanca.ini');
   try
    ArqIni.WriteString('Modelo', 'Modelo', edtModelo.Text);
    ArqIni.WriteString('Porta', 'Porta', edtPorta.Text);
    ArqIni.WriteString('DataBits', 'DataBits', edtDataBits.Text);
    ArqIni.WriteString('BaudRate', 'BaudRate', edtBaudRate.Text);
    ArqIni.WriteString('StopBits', 'StopBits', edtStopBits.Text);
    ArqIni.WriteString('Parity', 'Parity', edtParity.Text);
    ArqIni.WriteString('Time-Out', 'Time-Out', cb_bal_time_out.Text);
   finally
    ArqIni.Free;
    ShowMessage('Configurações salva com sucesso.');
  end;

 end;

procedure Tfrmconfig_balanca.BitBtn1Click(Sender: TObject);
begin
GravaIni('balanca');
end;

procedure Tfrmconfig_balanca.BitBtn2Click(Sender: TObject);
begin
 close;
end;

end.
