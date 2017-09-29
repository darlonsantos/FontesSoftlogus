unit UAguarde;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, ImgList, ExtCtrls, StdCtrls;

type
  TFAguarde = class(TForm)
    Timer1: TTimer;
    Panel1: TPanel;
    lbTexto: TLabel;
    lbTitulo: TLabel;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    iTempo: LongInt;
    { Public declarations }
  end;

var
  FAguarde: TFAguarde;


implementation

{$R *.dfm}


procedure TFAguarde.FormCreate(Sender: TObject);
begin
  Caption := 'Aguarde:.';

  inherited;

end;

procedure TFAguarde.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
if key = VK_ESCAPE then
close;
end;

procedure TFAguarde.FormShow(Sender: TObject);
begin
  inherited;
  Timer1.Enabled := False;

  Caption := 'Aguarde';

end;

procedure TFAguarde.Timer1Timer(Sender: TObject);
begin

  dec(iTempo);

  Caption := 'Aguarde:. ' + IntToStr(iTempo);;

  if iTempo = 0 then
    Close;

end;

end.
