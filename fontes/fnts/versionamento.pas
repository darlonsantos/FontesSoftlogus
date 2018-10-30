unit versionamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  Tfrmversionamento = class(TForm)
    reVersionamento: TRichEdit;
  private
   function versionamento (versionamento  : String ): String;
 public
    { Public declarations }
  end;

var
  frmversionamento: Tfrmversionamento;

implementation

{$R *.dfm}

{ Tfrmversionamento }

function Tfrmversionamento.versionamento(versionamento: String): String;
begin

end;

end.
