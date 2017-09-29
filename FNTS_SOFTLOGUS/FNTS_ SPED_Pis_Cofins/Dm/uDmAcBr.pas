unit uDmAcBr;

interface

uses
  SysUtils, Classes, ACBrSpedPisCofins, ACBrSpedFiscal;

type
  TDmAcBr = class(TDataModule)
    ACBrSPEDPisCofins1: TACBrSPEDPisCofins;
    ACBrSPEDFiscal1: TACBrSPEDFiscal;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmAcBr: TDmAcBr;

implementation

{$R *.dfm}

end.
