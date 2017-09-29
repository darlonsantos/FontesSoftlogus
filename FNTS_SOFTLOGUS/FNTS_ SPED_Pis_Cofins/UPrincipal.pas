{
Atualiza��o darlon santos
}

unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.CheckLst, Vcl.ComCtrls, Vcl.Imaging.pngimage,
  Vcl.ImgList, Vcl.Samples.Gauges, richedit, dateutils, Vcl.Imaging.jpeg,
  Uthread, Vcl.Menus;

type
  TIcone = (icOK, icAviso, icErro, icProcessa, icCancel);

type
  TFPrincipal = class(TForm)
    PageSPED: TPageControl;
    TabSped: TTabSheet;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Datai: TDateTimePicker;
    Dataf: TDateTimePicker;
    Panel2: TPanel;
    LbMensagem: TLabel;
    LbBlocos: TLabel;
    ProgressBar1: TProgressBar;
    ProgressBloco: TProgressBar;
    PgSeleciona: TPageControl;
    TabSheet6: TTabSheet;
    GroupBox10: TGroupBox;
    TabSheet7: TTabSheet;
    GroupBox11: TGroupBox;
    Label18: TLabel;
    ListaBlocosPisCofins: TCheckListBox;
    EdtNumRecAnterior: TEdit;
    TabECF: TTabSheet;
    pnTitulo: TPanel;
    imgLogo: TImage;
    Panel1: TPanel;
    lbEmpresa: TLabel;
    Button1: TButton;
    Button2: TButton;
    TabLog: TTabSheet;
    MemoLog: TRichEdit;
    TabConfiguracoes: TTabSheet;
    PageControl1: TPageControl;
    TabSheet3: TTabSheet;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label6: TLabel;
    edBufLinhas: TEdit;
    edBufNotas: TEdit;
    edNotas: TEdit;
    ChTruncado: TCheckBox;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    GroupBox6: TGroupBox;
    Label5: TLabel;
    Label2: TLabel;
    ComboVersao: TComboBox;
    EdtCodRec: TEdit;
    RadioPerfil: TRadioGroup;
    RadioFinalidade: TRadioGroup;
    RadioIndicador: TRadioGroup;
    TabSheet8: TTabSheet;
    GroupBox7: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label17: TLabel;
    ComboVersaoPC: TComboBox;
    ComboSituacao: TComboBox;
    RadioTipoEsc: TRadioGroup;
    RadioNatureza: TRadioGroup;
    ComboIndicador: TComboBox;
    ComboEscrituracao: TComboBox;
    TabSheet9: TTabSheet;
    GroupBox9: TGroupBox;
    RadioIncidencia: TRadioGroup;
    RadioAproCred: TRadioGroup;
    RadioContrApur: TRadioGroup;
    RadioEscrApur: TRadioGroup;
    TabSheet4: TTabSheet;
    GroupBox8: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    EdtSenhaAnt: TEdit;
    EdtSenhaNova: TEdit;
    EdtSenhaRepete: TEdit;
    BitBtn1: TBitBtn;
    pnECF: TPanel;
    OpenDialog1: TOpenDialog;
    ImageList1: TImageList;
    GroupBox4: TGroupBox;
    Check_C400: TCheckBox;
    Check_C405: TCheckBox;
    Check_C420: TCheckBox;
    Check_C490: TCheckBox;
    Check_C470: TCheckBox;
    Check_C460: TCheckBox;
    Check_C425: TCheckBox;
    MemoEFD: TMemo;
    CheckInventario: TCheckBox;
    CheckCSTECF: TCheckBox;
    EditCSTECF: TEdit;
    ListSPED: TListView;
    TimerAnimacao: TTimer;
    ImageList2: TImageList;
    PopupMenu1: TPopupMenu;
    GerarEFD: TMenuItem;
    Sair1: TMenuItem;
    SpeedButton1: TSpeedButton;
    Gauge1: TGauge;
    GroupBox13: TGroupBox;
    ListaEFDECF: TCheckListBox;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CheckCSTECFClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TimerAnimacaoTimer(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure GerarEFDClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
    // Justifica Texto
    procedure JustifyRichEdit(richedit: TRichEdit; AllText: Boolean);
    // Espacamento duplo
    procedure LineSpaceRichEdit(richedit: TRichEdit; Espacamento: Integer;
      AllText: Boolean);

  public
    ThreadUtil: TThreadUtil;
    iCone: Integer;
    procedure Mensagem(richedit: TRichEdit; Texto: String; iTamFont: Integer;
      Cor: TColor);
    procedure Msg(Texto: String; iTamFont: Integer; Cor: TColor);
    procedure AddItemListView(sValue: String; Icon: TIcone);
    procedure IconListView(i: Integer; Icon: TIcone);
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;
  iCodEmpresa: Integer;

implementation

{$R *.dfm}

uses UDm, UFuncoes, UEFDImporta;

procedure TFPrincipal.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TFPrincipal.Button2Click(Sender: TObject);
begin
  if MonthOf(Datai.Date) < 7 then
    ComboVersao.ItemIndex := 4
  else
    ComboVersao.ItemIndex := 5;

  PageSPED.ActivePageIndex := 0;

  ListSPED.Items.Clear;

  if ListaEFDECF.Items.Count > 0 then
    ImportarDadosECF;

  ListSPED.Items.Clear;

  AddItemListView('Gerando Sped Fiscal', icProcessa);
  dm.ACBrSPEDFiscal1.Arquivo := 'EFD_' + FormatDateTime('mmm_yyyy',
    Datai.Date) + '.txt';

  AddItemListView('0200 - Carregando Produtos', icProcessa);
  dm.Carregar_Produtos(Datai.Date, Dataf.Date);

  AddItemListView('0190 - Carregando Unidades', icProcessa);
  dm.Carregar_Unidades(Datai.Date, Dataf.Date);

  AddItemListView('0190 - Carregando Participantes', icProcessa);
  dm.Carregar_Participantes(Datai.Date, Dataf.Date);

  AddItemListView('BLOCO 0 - Gerando Bloco 0', icProcessa);
  dm.DadosBloco_0;

  AddItemListView('BLOCO C - Gerando Bloco C', icProcessa);
  dm.DadosBloco_C;

  if CheckInventario.Checked then
  begin
    AddItemListView('BLOCO H - Gerando Bloco H', icProcessa);
    dm.DadosBloco_H;
  end;
  // Dm.DadosBloco_G;

  AddItemListView('BLOCO E - Apura��o do ICMS', icProcessa);
  // dm.DadosBloco_E;
  FPrincipal.IconListView(FPrincipal.ListSPED.Items.Count - 1, icOK);

  AddItemListView('BLOCO 1 - Dados Obrigat�rios', icProcessa);
  dm.DadosBloco_1;
  FPrincipal.IconListView(FPrincipal.ListSPED.Items.Count - 1, icOK);

  AddItemListView('Conclu�do', icOK);

  dm.ACBrSPEDFiscal1.SaveFileTXT;

  FPrincipal.IconListView(0, icOK);
  MessageBeep(64);

  MessageDlg(pAnsichar('Arquivo gerado com sucesso!' + #10#13 +
    dm.ACBrSPEDFiscal1.Path + dm.ACBrSPEDFiscal1.Arquivo), mtInformation,
    [mbOK], 0);

end;

procedure TFPrincipal.CheckCSTECFClick(Sender: TObject);
begin
  EditCSTECF.Enabled := CheckCSTECF.Checked;
end;

procedure TFPrincipal.FormCreate(Sender: TObject);
begin
  PgSeleciona.Pages[1].TabVisible := false; // pis cofins
  PageControl1.Pages[1].TabVisible := false; // senha

  ThreadUtil := TThreadUtil.Create(false);
  ThreadUtil.FreeOnTerminate := true;

end;

procedure TFPrincipal.FormShow(Sender: TObject);
begin
  dm.qrEmpresa.Close;
  dm.qrEmpresa.Open;

  iCodEmpresa := isInteger(dm.qrEmpresaCODIGO.AsString);
  lbEmpresa.Caption := zerarcodigo(IntToStr(iCodEmpresa), 6) + ' - ' +
    dm.qrEmpresaFILIAL.AsString;

  Datai.DateTime := StartOfTheMonth(Date - 30);
  Dataf.DateTime := EndOfTheMonth(Date - 30);

  PageSPED.ActivePageIndex := 0;
  PgSeleciona.ActivePageIndex := 0;

end;

procedure TFPrincipal.GerarEFDClick(Sender: TObject);
begin
  Button2.Click;
end;

procedure TFPrincipal.IconListView(i: Integer; Icon: TIcone);
begin
  iCone := i;
  case Icon of
    icOK:
      begin
        ListSPED.Items[i].ImageIndex := 2;
        TimerAnimacao.Enabled := false;
      end;
    icAviso:
      begin
        ListSPED.Items[i].ImageIndex := 4;
        TimerAnimacao.Enabled := false;
      end;
    icErro:
      begin
        ListSPED.Items[i].ImageIndex := 3;
        TimerAnimacao.Enabled := false;
      end;
    icProcessa:
      begin
        ListSPED.Items[i].ImageIndex := 1;
        TimerAnimacao.Enabled := true;
      end;
    icCancel:
      begin
        TimerAnimacao.Enabled := true;
      end;

  end;

end;

procedure TFPrincipal.JustifyRichEdit(richedit: TRichEdit; AllText: Boolean);
const
  TO_ADVANCEDTYPOGRAPHY = $1;
  EM_SETTYPOGRAPHYOPTIONS = (WM_USER + 202);
  EM_GETTYPOGRAPHYOPTIONS = (WM_USER + 203);
var
  ParaFormat: TParaFormat;
  SelStart, SelLength: Integer;
begin
  ParaFormat.cbSize := SizeOf(ParaFormat);
  if SendMessage(richedit.handle, EM_SETTYPOGRAPHYOPTIONS,
    TO_ADVANCEDTYPOGRAPHY, TO_ADVANCEDTYPOGRAPHY) = 1 then
  begin
    SelStart := richedit.SelStart;
    SelLength := richedit.SelLength;
    if AllText then
      richedit.SelectAll;
    ParaFormat.dwMask := PFM_ALIGNMENT;
    ParaFormat.wAlignment := PFA_JUSTIFY;
    SendMessage(richedit.handle, EM_SETPARAFORMAT, 0, LongInt(@ParaFormat));
    // Restaura sele��o caso tenhamos mudado para All
    richedit.SelStart := SelStart;
    richedit.SelLength := SelLength;
  end;
end;

procedure TFPrincipal.LineSpaceRichEdit(richedit: TRichEdit;
  Espacamento: Integer; AllText: Boolean);
var
  ParaFormat: TParaFormat2;
  SelStart, SelLength: Integer;
begin
  if AllText then
    richedit.SelectAll;

  ParaFormat.cbSize := SizeOf(ParaFormat);
  ParaFormat.dwMask := PFM_LINESPACING or PFM_SPACEAFTER;
  ParaFormat.dyLineSpacing := Espacamento;
  ParaFormat.bLineSpacingRule := Espacamento;
  SendMessage(richedit.handle, EM_SETPARAFORMAT, 0, LongInt(@ParaFormat));
  // Restaura sele��o caso tenhamos mudado para All
  // richedit.SelStart := SelStart;
  // richedit.SelLength := SelLength;

end;

procedure TFPrincipal.Mensagem(richedit: TRichEdit; Texto: String;
  iTamFont: Integer; Cor: TColor);
var
  i: Integer;
begin

  try
    richedit.SelAttributes.Color := Cor;
    richedit.SelAttributes.Size := iTamFont;

    richedit.Alignment := taLeftJustify;
    // LineSpaceRichEdit(richedit, 1, False);
    richedit.Lines.Add(Texto);

  finally

  end;

end;

procedure TFPrincipal.Msg(Texto: String; iTamFont: Integer; Cor: TColor);
begin
  Mensagem(MemoLog, Texto, iTamFont, Cor);
  SendMessage(MemoLog.handle, WM_VSCROLL, SB_PAGEDOWN, 0);
end;

procedure TFPrincipal.Sair1Click(Sender: TObject);
begin
  Close;
end;

procedure TFPrincipal.SpeedButton2Click(Sender: TObject);
var
  i: Integer;
begin

  if OpenDialog1.Execute then
  begin

    ListaEFDECF.Items.Assign(OpenDialog1.Files);

  end;

  for i := 0 to ListaEFDECF.Count - 1 do
    ListaEFDECF.Selected[i] := true;

end;

procedure TFPrincipal.SpeedButton4Click(Sender: TObject);
begin

  ListaEFDECF.DeleteSelected;

end;

procedure TFPrincipal.TimerAnimacaoTimer(Sender: TObject);
var
  i: Integer;
begin
  // Faz a "anima��o" das setas de azul pra amarelo e vice-versa

  for i := 0 to ListSPED.Items.Count - 1 do
  begin
    TimerAnimacao.Enabled := false;
    if ListSPED.Items[i].ImageIndex = 0 then
      ListSPED.Items[i].ImageIndex := 1
    else if ListSPED.Items[i].ImageIndex = 1 then
      ListSPED.Items[i].ImageIndex := 0;

  end;

  TimerAnimacao.Enabled := true;

end;

procedure TFPrincipal.AddItemListView(sValue: String; Icon: TIcone);
var
  lvItem: TListItem;
begin

  lvItem := ListSPED.Items.Add;
  lvItem.ImageIndex := -1;
  lvItem.SubItems.Add(sValue);

  IconListView(lvItem.Index, Icon);

end;

end.
