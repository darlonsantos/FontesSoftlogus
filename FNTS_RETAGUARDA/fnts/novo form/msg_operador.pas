unit msg_operador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, pngimage, ExtCtrls;

type
  TfrmMsg_Operador = class(TForm)
    Image1: TImage;
    Image2: TImage;
    lb_msg: TLabel;
    procedure FormHide(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMsg_Operador: TfrmMsg_Operador;

implementation

{$R *.dfm}

procedure TfrmMsg_Operador.FormHide(Sender: TObject);
begin
  Screen.Cursor := crNone;
  application.ProcessMessages;

end;

procedure TfrmMsg_Operador.FormShow(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  Brush.Style := bsClear;
  application.ProcessMessages;

end;

end.
