unit Uprincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvMemo, StdCtrls, Buttons, AdvSmoothListBox, acPNG, ExtCtrls,
  sSpeedButton;

type
  TForm1 = class(TForm)
    edtcodbarra: TEdit;
    btnsalvar: TSpeedButton;
    edtnomearquivo: TEdit;
    lblnome: TLabel;
    lstcodbarras2: TListBox;
    lbl3: TLabel;
    edtqtd: TEdit;
    lbl4: TLabel;
    lbl5: TLabel;
    btnnovo: TsSpeedButton;
    procedure edtcodbarraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnsalvarClick(Sender: TObject);
    procedure lstcodbarras2DblClick(Sender: TObject);
    procedure btnnovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnnovoClick(Sender: TObject);
begin
  edtcodbarra.Text := '';
  edtqtd.Text := '1';
  edtnomearquivo.Text := '';
  lstcodbarras2.Clear;
  edtcodbarra.SetFocus;
end;

procedure TForm1.btnsalvarClick(Sender: TObject);
var
  NomeDoLog: string;
  Arquivo: TextFile;
  I: integer;
begin
  if edtnomearquivo.Text = '' then
  begin
    Application.MessageBox('Digite o Nome do Arquivo', 'Softlogus - Colector');
    Abort;
  end
  else
    for I := 0 to lstcodbarras2.count - 1 do
    begin
      NomeDoLog := 'c:\Athenas\server\Logs\Coletor_' + edtnomearquivo.Text +
        '.txt';
      AssignFile(Arquivo, NomeDoLog);
      if FileExists(NomeDoLog) then
        Append(Arquivo) { se existir, apenas adiciona linhas }
      else
        ReWrite(Arquivo); { cria um novo se n�o existir }
      try
        WriteLn(Arquivo, lstcodbarras2.Items.Strings[I]);
      finally
        CloseFile(Arquivo)
      end;
    end;
end;

procedure TForm1.edtcodbarraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  itemlist, qtd: string;
begin
  if Key = vk_return then
  begin
    if trim(edtcodbarra.Text) <> '' then
    begin
      qtd := edtqtd.Text;
      itemlist := edtcodbarra.Text + ',' + qtd;
      lstcodbarras2.Items.Add(itemlist);
      edtcodbarra.Enabled := true;
      edtcodbarra.SetFocus;
      edtcodbarra.Text := '';
    end;

  end;

end;

procedure TForm1.lstcodbarras2DblClick(Sender: TObject);
begin
  lstcodbarras2.DeleteSelected
end;

end.
