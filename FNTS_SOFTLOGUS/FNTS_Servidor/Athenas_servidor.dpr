program Athenas_servidor;

uses
  Forms,
  principal in 'principal.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '..:: Sistema Athenas - Servidor::..';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
