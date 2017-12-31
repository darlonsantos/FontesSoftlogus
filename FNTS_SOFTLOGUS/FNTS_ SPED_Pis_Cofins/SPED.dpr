program SPED;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UDm in 'UDm.pas' {Dm: TDataModule},
  UFuncoes in 'UFuncoes.pas',
  UEFDImporta in 'UEFDImporta.pas',
  Uthread in 'Uthread.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Iceberg Classico');
  Application.Title := 'Softlogus - SPED';
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.CreateForm(TDm, Dm);
  Application.Run;
end.
