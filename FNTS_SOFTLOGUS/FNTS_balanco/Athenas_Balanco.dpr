program Athenas_Balanco;

uses
  Forms,
  principal in 'principal.pas' {balanco};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Athenas Balance';
  Application.CreateForm(Tbalanco, balanco);
  Application.Run;
end.
