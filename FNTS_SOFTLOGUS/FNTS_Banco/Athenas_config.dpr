program Athenas_config;

uses
  //madExcept,
  //madLinkDisAsm,
  //madListHardware,
  //madListProcesses,
  //madListModules,
  Forms,
  Principal in 'Principal.pas' {frmprincipal};


{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Athenas:: Config';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
