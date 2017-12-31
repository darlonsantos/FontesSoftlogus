program Softlogus;

uses
  System.StartUpCopy,
  FMX.Forms,
  Uprincipal in 'Uprincipal.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
