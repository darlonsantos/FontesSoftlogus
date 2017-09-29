program Servidor_Softlogus;

uses
  Forms,
  principal in 'principal.pas' {frmPrincipal},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  TStyleManager.TrySetStyle('Iceberg Classico');
  Application.Title := '..:: Sistema Athenas - Servidor::..';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
