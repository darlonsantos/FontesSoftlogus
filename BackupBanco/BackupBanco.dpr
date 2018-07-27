program BackupBanco;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {FrmBackup};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmBackup, FrmBackup);
  Application.Run;
end.
