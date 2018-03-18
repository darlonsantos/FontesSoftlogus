unit UPrincipal;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  IPPeerServer,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  DBAccess, Uni, MemDS, Vcl.Buttons, UniProvider, OracleUniProvider, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxRibbonSkins, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinsdxRibbonPainter, dxRibbonCustomizationForm,
  dxStatusBar, dxRibbonStatusBar, cxClasses, dxRibbon, Vcl.ToolWin, Vcl.ActnMan,
  Vcl.ActnCtrls, Vcl.Ribbon, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.RibbonLunaStyleActnCtrls, Vcl.Menus,
  JvMenus, AdvMenus, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  Tfrmprincipal = class(TForm)
    ActionManager1: TActionManager;
    actConfi: TAction;
    actUsuario: TAction;
    AdvMainMenu1: TAdvMainMenu;
    e1: TMenuItem;
    w1: TMenuItem;
    w2: TMenuItem;
    w3: TMenuItem;
    Label3: TLabel;
    thrashCountEdit: TEdit;
    Label4: TLabel;
    maxRequestsEdit: TEdit;
    thrashUpdate: TButton;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    ConnectionsList: TListBox;
    SessionIdList: TListBox;
    Label5: TLabel;
    useKeepAliveCheck: TCheckBox;
    KAIdleLabel: TLabel;
    KAIdleMS: TEdit;
    KeepAlivePopup: TPopupMenu;
    EnableKAItem: TMenuItem;
    DisableKAItem: TMenuItem;
    N1: TMenuItem;
    closeConnItem: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure EnableKAItemClick(Sender: TObject);
  private
    
  public
  /// <summary>Closes the TCP connection corresponding to the session with the given Id.</summary>

  end;

var
  frmprincipal: Tfrmprincipal;

implementation

{$R *.dfm}

uses DSSession, Winapi.Winsock;

Function GetIPAddress:String;
type
  pu_long = ^u_long;
var
  varTWSAData: TWSAData;
  varPHostEnt: PHostEnt;
  varTInAddr: TInAddr;
  namebuf: Array[0..255] of AnsiChar;
begin
  if WSAStartup($101, varTWSAData) <> 0 then
    Result := '127.0.0.1'
  else
  begin
    gethostname(namebuf, sizeof(namebuf));
    varPHostEnt := gethostbyname(namebuf);
    varTInAddr.S_addr := u_long(pu_long(varPHostEnt^.h_addr_list^)^);
    Result := '' + inet_ntoa(varTInAddr);
  end;
  WSACleanup;
end;

procedure Tfrmprincipal.EnableKAItemClick(Sender: TObject);
var
  Channel: TDSTCPChannel;
begin
 Channel := GetSelectedChannel;

  if (Channel <> nil) and (KAIdleMS.Text <> EmptyStr) then
    Channel.EnableKeepAlive(StrToInt(KAIdleMS.Text));
end;
procedure Tfrmprincipal.FormActivate(Sender: TObject);
begin
  useKeepAliveCheck.Hint := 'Isso só será aplicado a novas conexões: '# 13 # 10' já existe conexões estabelecidas.';

  thrashUpdateClick(nil);

  FConnections := TObjectDictionary<TIdTCPConnection,TDSTCPChannel>.Create;
  ServerContainer1.DSTCPServerTransport1.OnConnect := CMServerTransportConnectEvent;
  ServerContainer1.DSTCPServerTransport1.OnDisconnect := CMServerTransportDisconnectEvent;
  AddSessionListener;

end;

end.

