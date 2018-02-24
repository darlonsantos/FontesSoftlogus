program Migrador;

uses
  Vcl.Forms,
  Unit_principal in 'Unit_principal.pas' {frmmigrador},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrmmigrador, frmmigrador);
  Application.Run;
end.
