program Monitor;

uses
  Forms,
  principal in 'principal.pas' {frmPrincipal},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  TStyleManager.TrySetStyle('Iceberg Classico');
  Application.Title := '..:: Softlogus Sistemas  - Servidor de monitoramentos::..';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.