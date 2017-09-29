program GBack;

uses
  Forms,
  GerarBackup in 'GerarBackup.pas' {FGerarBackup},
  Principal in 'Principal.pas' {FPrincipal},
  DataModule in 'DataModule.pas' {DMBanco: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Sistema de Backup';
  Application.CreateForm(TDMBanco, DMBanco);
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.CreateForm(TFGerarBackup, FGerarBackup);
  Application.Run;
end.
