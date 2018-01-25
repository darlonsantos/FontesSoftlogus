unit UBackup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IBCAdmin;

type
  TfrmbackupBase = class(TForm)
    IBCBackupService1: TIBCBackupService;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmbackupBase: TfrmbackupBase;

implementation

{$R *.dfm}

end.
