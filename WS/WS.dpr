program WS;

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  UPrincipal in 'UPrincipal.pas' {frmprincipal},
  ServerMethodsUnit1 in 'ServerMethodsUnit1.pas' {ServerMethods1: TDSServerModule},
  ServerContainerUnit1 in 'ServerContainerUnit1.pas' {ServerContainer1: TDataModule},
  conexoes in 'conexoes.pas' {dm: TDataModule},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Coral');
  Application.CreateForm(Tfrmprincipal, frmprincipal);
  Application.CreateForm(TServerContainer1, ServerContainer1);
  Application.CreateForm(Tdm, dm);
  Application.Run;
end.

