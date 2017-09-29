program Softlogus_Balanco;

uses
  Forms,
  principal in 'principal.pas' {balanco},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Softlogus | Balanço';
  Application.CreateForm(Tbalanco, balanco);
  Application.Run;
end.
