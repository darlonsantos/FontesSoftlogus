program Softlogus_Config;

{$R 'Win7UAC.res' 'C:\Softlogus\PDV\Win7UAC.rc'}

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
  Application.Title := 'Configurações do Sistema';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
