unit agenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ScrollView, CustomGridViewControl, CustomGridView,
  GridView, ImgList, DB, Grids, DBGrids, DBGridView, Buttons, Collection,
  ExtCtrls, ZAbstractRODataset, ZAbstractDataset, ZDataset, Wwdbigrd,
  Wwdbgrid, Menus, DBCtrls, Mask, shellapi, AdvGlowButton, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxEdit,
  cxScheduler, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerCustomResourceView, cxSchedulerDayView,
  cxSchedulerDateNavigator, cxSchedulerHolidays, cxSchedulerTimeGridView,
  cxSchedulerUtils, cxSchedulerWeekView, cxSchedulerYearView,
  cxSchedulerGanttView, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp,
  dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxSchedulerPainter, cxSchedulerDBStorage, cxLocalization,
  cxClasses, AdvReflectionLabel, RzPanel, cxSchedulerTreeListBrowser, dxSkinOffice2013White;

type
  Tfrmagenda = class(TForm)
    dsagenda: TDataSource;
    ImageList1: TImageList;
    PopupMenu1: TPopupMenu;
    Sair1: TMenuItem;
    Bevel1: TBevel;
    Bevel2: TBevel;
    cxScheduler1: TcxScheduler;
    cxSchedulerDBStorage1: TcxSchedulerDBStorage;
    qrAgenda: TZQuery;
    dsagenda2: TDataSource;
    QRFUNC: TZQuery;
    dsfucnionarios: TDataSource;
    cxLocalizer1: TcxLocalizer;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    T1: TMenuItem;
    D1: TMenuItem;
    P1: TMenuItem;
    F1: TMenuItem;
    A1: TMenuItem;
    RzPanel2: TRzPanel;
    btn74d: TAdvGlowButton;
    btn1ff454: TAdvGlowButton;
    btneee14545: TAdvGlowButton;
    btn55dd: TAdvGlowButton;
    btneee111: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    procedure FormShow(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure T1Click(Sender: TObject);
    procedure D1Click(Sender: TObject);
    procedure P1Click(Sender: TObject);
    procedure F1Click(Sender: TObject);
    procedure A1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmagenda: Tfrmagenda;

implementation

uses modulo, agenda_ficha, principal;

{$R *.dfm}

procedure Tfrmagenda.FormShow(Sender: TObject);
begin

  frmmodulo.qrAgenda.close;
  frmmodulo.qrAgenda.sql.clear;
  frmmodulo.qrAgenda.sql.add('select * from c000034 order by nome');
  frmmodulo.qrAgenda.open;
  frmmodulo.qrAgenda.first;
  qrAgenda.open;
  // Nao mostrar o usuario Producao
  QRFUNC.close;
  QRFUNC.sql.clear;
  //QRFUNC.sql.add('select * from C000008 where codigo <> ''000001''');
  QRFUNC.sql.add('select * from C000008 order by nome');
  QRFUNC.open;
end;

procedure Tfrmagenda.P1Click(Sender: TObject);
begin
  frmmodulo.qrAgenda.close;
  frmmodulo.qrAgenda.sql.clear;
  frmmodulo.qrAgenda.sql.add('select * from c000034 order by nome');
  frmmodulo.qrAgenda.open;
  frmmodulo.qrAgenda.first;
  qrAgenda.open;

  QRFUNC.close;
  QRFUNC.sql.clear;
  QRFUNC.sql.add('select * from C000008 where codigo = :codigo');
  QRFUNC.ParamByName('codigo').AsString:= frmPrincipal.zerarcodigo(IntToStr(frmPrincipal.iCloud.CurrentUser.UserID),6);
  QRFUNC.open;
end;

procedure Tfrmagenda.T1Click(Sender: TObject);
begin
  cxScheduler1.ViewGantt.Active := True;
end;

procedure Tfrmagenda.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmagenda.D1Click(Sender: TObject);
begin
  cxScheduler1.ViewDay.Active := True;
  cxScheduler1.SelectDays(now, now, True);
end;

procedure Tfrmagenda.F1Click(Sender: TObject);
begin
  QRFUNC.close;
  QRFUNC.sql.clear;
  QRFUNC.sql.add('select * from C000008');
  QRFUNC.open;
end;

procedure Tfrmagenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with frmmodulo do
  begin
    qrcliente.close;
    qrcliente.sql.clear;
    qrcliente.sql.add('select * from C000007');
    qrcliente.open;
  end;
  frmmodulo.Conexao.Commit;
  //Action := caFree;
  //frmagenda := freeandnil;
end;

procedure Tfrmagenda.A1Click(Sender: TObject);
begin
  cxScheduler1.CreateEventUsingDialog();
end;

end.
