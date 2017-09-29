
unit splash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, VrProgressBar, VrControls, VrGauge,
  TFlatProgressBarUnit, ComCtrls, XPMan,
  ExtCtrls, StdCtrls, jpeg, ExeInfo, RzPrgres, AdvShapeButton,
  AdvReflectionLabel, dxGDIPlusClasses, AdvReflectionImage;

type
  Tfrmsplash = class(TForm)
    XPManifest1: TXPManifest;
    Timer1: TTimer;
    Label2: TLabel;
    ExeInfo1: TExeInfo;
    AdvReflectionLabel2: TAdvReflectionLabel;
    Image1: TImage;
    Image3: TImage;
    AdvReflectionImage1: TAdvReflectionImage;
    Label3: TLabel;
    Label1: TLabel;
    p: TRzProgressBar;
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsplash: Tfrmsplash;
  I : INTEGER;

implementation

{$R *.dfm}

procedure Tfrmsplash.Timer1Timer(Sender: TObject);
begin
  I := I + 5;

  P.percent := P.percent + 5;

  IF (P.percent MOD 5) = 0 THEN
  BEGIN
    IF LABEL1.Font.Color = CLWHITE THEN
       LABEL1.FoNT.Color := clGray ELSE
       LABEL1.FoNT.Color := clWHITE;
  END;

  IF P.percent = 100 THEN
  BEGIN
    LABEL1.CAPTION := 'SISTEMA CARREGADO COM SUCESSO!';
  END;

  IF I = 120 THEN CLOSE;

end;

procedure Tfrmsplash.FormShow(Sender: TObject);
begin
  label2.caption := ExeInfo1.fileVersion;
end;



end.

