program PDVMonitor;

uses
  Forms,
  principal in 'principal.pas' {frmPrincipal},
  Thread.CheckConnection in '..\FNTS_Comuns\Thread.CheckConnection.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'PDVMonitor';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
