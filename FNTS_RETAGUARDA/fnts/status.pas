unit status;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Vcl.Imaging.jpeg;

type
  TfrmStatus = class(TForm)
    Image1: TImage;
    lblStatus: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStatus: TfrmStatus;

implementation

{$R *.dfm}

procedure TfrmStatus.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

end.
