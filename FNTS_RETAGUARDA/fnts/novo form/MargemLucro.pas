unit MargemLucro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Vcl.Mask, RxToolEdit, RxCurrEdit, dxGDIPlusClasses, Vcl.ExtCtrls;

type
  TFMargemLucro = class(TForm)

    Label1: TLabel;
    eMargem: TCurrencyEdit;
    Image1: TImage;
    procedure eMargemKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMargemLucro: TFMargemLucro;

implementation

{$R *.dfm}


procedure TFMargemLucro.eMargemKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
    Close;
end;

end.
