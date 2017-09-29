program Servidor_Softlogus;

uses
  Forms,
  principal in 'principal.pas' {frmPrincipal},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '..:: Softlogus Sistemas  - Servidor de monitoramentos::..';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
