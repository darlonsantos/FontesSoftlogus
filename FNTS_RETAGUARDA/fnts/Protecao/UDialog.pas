unit UDialog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, acPNG, ExtCtrls, StdCtrls, Buttons, sBitBtn, sLabel;

type
  TfrmDialog = class(TForm)
    ICOQ: TImage;
    Men: TsLabelFX;
    Panel1: TPanel;
    Panel2: TPanel;
    Nao: TsBitBtn;
    Sim: TsBitBtn;
    IcoE: TImage;
    IcoI: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SimClick(Sender: TObject);
    procedure NaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    OP: Boolean;
    ICONE: string;
  end;
  function KDialog( Texto: String; const Titulo: String = ''; const Icone: String = '' ): Boolean;

var
  frmDialog: TfrmDialog;

implementation

{$R *.dfm}

function KDialog( Texto: String; const Titulo: String = ''; const Icone: String = '' ): Boolean;
var
   Icone2, Titulo2: String;
begin
   Titulo2 := Titulo;
   Icone2 := Icone;
   if Icone = '' then
      Icone2 := 'INFO';
   if Titulo = '' then
      Titulo2 := Application.Title;
   Application.CreateForm( TfrmDialog, frmDialog );
   frmDialog.OP := False;
   frmDialog.Men.Caption := Texto;
   frmDialog.Caption := Titulo2;
   frmDialog.ICONE := Icone2;
   frmDialog.ShowModal;
   if frmDialog.OP then
      Result := True
   else
      Result := false;
end;


procedure TfrmDialog.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmDialog.FormShow(Sender: TObject);
begin
   Height := 120 + Men.Height;
   if (80 + Men.Width) < 200 then
       begin
          Width := 200;
       end
   else
       Width := 80 + Men.Width;
   if trim( ICONE ) = 'PERGUNTA' then
      begin
         ICOQ.Visible := True;
         IcoE.Visible := False;
         IcoI.Visible := false;
      end;
   if trim( ICONE ) = 'ERRO' then
      begin
         ICOQ.Visible := False;
         IcoE.Visible := True;
         IcoI.Visible := false;
         Nao.Visible := False;
         Sim.Caption := 'OK';
      end;
   if trim( ICONE ) = 'INFO' then
      begin
         ICOQ.Visible := False;
         IcoE.Visible := false;
         IcoI.Visible := true;
         Nao.Visible := False;
         Sim.Caption := 'OK';
      end;

end;

procedure TfrmDialog.SimClick(Sender: TObject);
begin
   OP := True;
   Close;
end;

procedure TfrmDialog.NaoClick(Sender: TObject);
begin
   OP := False;
   Close;
end;

end.
