program Colector;

uses
  Forms,
  Uprincipal in 'Uprincipal.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  TStyleManager.TrySetStyle('Iceberg Classico');
  Application.Title := 'Softlogus Colector';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
