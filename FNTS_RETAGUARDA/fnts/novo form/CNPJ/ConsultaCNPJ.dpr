program ConsultaCNPJ;

uses
  Forms,
  CNPJ in 'CNPJ.pas' {FCNPJ};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFCNPJ, FCNPJ);
  Application.Run;
end.
