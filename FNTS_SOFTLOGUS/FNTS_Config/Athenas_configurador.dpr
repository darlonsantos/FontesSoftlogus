program Athenas_configurador;

uses
  Forms,
  principal in 'principal.pas' {frmPrincipal},
  funcoes in 'funcoes.pas',
  cnif in 'cnif.pas' {frmCNIF},
  unECF in 'unECF.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  TStyleManager.TrySetStyle('Iceberg Classico');
  Application.Title := 'Configurações do Sistema';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
