program config;

uses
  Forms,
  Principal in 'Principal.pas' {frmprincipal},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  TStyleManager.TrySetStyle('Smokey Quartz Kamri');
  Application.Title := 'Athenas:: Config';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
