unit uAtualiza;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Vcl.StdCtrls, AdvGlowButton;

type
  TForm1 = class(TForm)
    AdvGlowButton1: TAdvGlowButton;
    Label1: TLabel;
    ZConnection1: TZConnection;
    Query: TZQuery;
    procedure AdvGlowButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.AdvGlowButton1Click(Sender: TObject);
begin
if Query.FindField('controle') <> nil then
  ShowMessage('Existe!')
else
  ShowMessage('Não Existe!');
end;
end.
