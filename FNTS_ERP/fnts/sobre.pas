unit sobre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvReflectionImage, ExtCtrls, StdCtrls, AdvMetroButton,
  AdvSmoothPanel, AdvSmoothExpanderPanel, dxGDIPlusClasses, NxCollection,
  RzLabel, acPNG;

type
  TForm_sobre = class(TForm)
    lbl1: TLabel;
    lbl3: TLabel;
    img1: TImage;
    GroupBox1: TGroupBox;
    lbl2: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl4: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    img2: TImage;
    procedure AdvMetroButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_sobre: TForm_sobre;

implementation

{$R *.dfm}

procedure TForm_sobre.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

end.

