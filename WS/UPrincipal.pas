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
  JvMenus, AdvMenus, Vcl.StdCtrls, Vcl.ExtCtrls, IdTCPConnection, Datasnap.DSTCPServerTransport,  Generics.Collections;


 // , Menus, ExtCtrls;

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
    bancoDados: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure EnableKAItemClick(Sender: TObject);
    procedure useKeepAliveCheckClick(Sender: TObject);
    procedure thrashUpdateClick(Sender: TObject);
    procedure bancoDadosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DisableKAItemClick(Sender: TObject);
  private
    FConnections: TObjectDictionary<TIdTCPConnection,TDSTCPChannel>;
    procedure CMServerTransportConnectEvent(Event: TDSTCPConnectEventObject);
    procedure CMServerTransportDisconnectEvent(Event: TDSTCPDisconnectEventObject);
    procedure AddConnectionToList(Conn: TIdTCPConnection; Channel: TDSTCPChannel);
    procedure AddSessionListener;
    procedure AddOrRemoveSession(SessionId: String; IsAdd: Boolean);
    function GetConnectionWithSessionId(SessionId: String): TIdTCPConnection;
    function GetSessionIdConnectionIndex(SessionId: String): Integer;
    function GetSelectedConnection: TIdTCPConnection;
    function GetSelectedChannel(Conn: TIdTCPConnection = nil): TDSTCPChannel;
  public
  /// <summary>Closes the TCP connection corresponding to the session with the given Id.</summary>
    procedure ForceConnectionClose(SessionId: String);

    procedure PrepareForGracefulClose;
  end;

var
  frmprincipal: Tfrmprincipal;

implementation

{$R *.dfm}

uses DSSession, Winapi.Winsock, ServerContainerUnit1, UconfConexoes;

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

procedure Tfrmprincipal.AddConnectionToList(Conn: TIdTCPConnection;
  Channel: TDSTCPChannel);
var
  InfoStr: String;
begin
  if (Conn <> nil) and (Channel <> nil) and (Channel.ChannelInfo <> nil) and
     (Channel.ChannelInfo.ClientInfo.IpAddress <> EmptyStr) then
  begin
    with Channel.ChannelInfo.ClientInfo do
    begin
      InfoStr := Format('%s:%s', [IpAddress, ClientPort]);
    end;
    ConnectionsList.Items.AddObject(InfoStr, Conn);
  end
  else
    ConnectionsList.Items.AddObject('O canal não possui informações do cliente adequadas.', Conn);
end;


procedure Tfrmprincipal.AddOrRemoveSession(SessionId: String; IsAdd: Boolean);
var
  Index: Integer;
begin
  if FConnections = nil then
    Exit;

  if IsAdd then
  begin
    if SessionIdList.Items.IndexOf(SessionId) < 0 then
      SessionIdList.Items.Add(SessionId);
  end
  else
  begin
    Index := SessionIdList.Items.IndexOf(SessionId);
    if Index > -1 then
      SessionIdList.Items.Delete(Index);
  end;
end;

procedure Tfrmprincipal.AddSessionListener;
begin
  TDSSessionManager.Instance.AddSessionEvent(
    procedure(Sender: TObject;
              const EventType: TDSSessionEventType;
              const Session: TDSSession)
    begin
      if FConnections = nil then
        Exit;
      if (EventType = SessionClose) and (Session <> nil) then
        ServerContainer1.SessionClosed(Session.SessionName);
      AddOrRemoveSession(Session.SessionName, EventType = SessionCreate);
    end);
end;

procedure Tfrmprincipal.bancoDadosClick(Sender: TObject);
begin
  frmConexoes := TfrmConexoes.Create(Self);
  frmConexoes.ShowModal;
end;

procedure Tfrmprincipal.CMServerTransportConnectEvent(
  Event: TDSTCPConnectEventObject);
begin
  if FConnections = nil then
    Exit;
  System.TMonitor.Enter(FConnections);
  try
    FConnections.Add(TIdTCPConnection(Event.Connection), Event.Channel);
  finally
    System.TMonitor.Exit(FConnections);
  end;
    AddConnectionToList(TIdTCPConnection(Event.Connection), Event.Channel);
  if useKeepAliveCheck.Checked and (KAIdleMS.Text <> EmptyStr)then
    Event.Channel.EnableKeepAlive(StrToInt(KAIdleMS.Text));
end;

procedure Tfrmprincipal.CMServerTransportDisconnectEvent(
  Event: TDSTCPDisconnectEventObject);
var
  Index: Integer;
begin
  if (FConnections = nil) or (Event.Connection = nil) then
    Exit;
  System.TMonitor.Enter(FConnections);
  try
    FConnections.Remove(TIdTCPConnection(Event.Connection));
    TThread.Synchronize(nil, procedure
      begin
        Index := ConnectionsList.Items.IndexOfObject(Event.Connection);
        if Index > -1 then
        begin
          ConnectionsList.Items.Delete(Index);

          if ConnectionsList.SelCount = 0 then
            SessionIdList.ClearSelection;
        end;
      end);
  finally
    System.TMonitor.Exit(FConnections);
  end;
end;

procedure Tfrmprincipal.DisableKAItemClick(Sender: TObject);
var
  Channel: TDSTCPChannel;
begin
  Channel := GetSelectedChannel;

  if (Channel <> nil) then
    Channel.DisableKeepAlive;
end;
procedure Tfrmprincipal.EnableKAItemClick(Sender: TObject);
var
  Channel: TDSTCPChannel;
begin
 Channel := GetSelectedChannel;

  if (Channel <> nil) and (KAIdleMS.Text <> EmptyStr) then
    Channel.EnableKeepAlive(StrToInt(KAIdleMS.Text));
end;
procedure Tfrmprincipal.ForceConnectionClose(SessionId: String);
var
  ConnIndex: Integer;
  Obj: TObject;
  Channel: TDSTCPChannel;
begin
  ConnIndex := GetSessionIdConnectionIndex(SessionId);

  if ConnIndex > -1 then
  begin
   Obj := ConnectionsList.Items.Objects[ConnIndex];
    if Obj <> nil then
    begin
      Channel := GetSelectedChannel(TIdTCPConnection(Obj));
      if Channel <> nil then
        Channel.Close;
    end;
  end;
end;


procedure Tfrmprincipal.FormActivate(Sender: TObject);
begin
  useKeepAliveCheck.Hint := 'Isso só será aplicado a novas conexões: já existe conexões estabelecidas.';

  thrashUpdateClick(nil);

  FConnections := TObjectDictionary<TIdTCPConnection,TDSTCPChannel>.Create;
  ServerContainer1.DSTCPServerTransport1.OnConnect := CMServerTransportConnectEvent;
  ServerContainer1.DSTCPServerTransport1.OnDisconnect := CMServerTransportDisconnectEvent;
  AddSessionListener;

end;

procedure Tfrmprincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FreeAndNil(FConnections);
end;

procedure Tfrmprincipal.FormCreate(Sender: TObject);
begin
 Caption := Caption + ' - ' + GetIPAddress;
end;

function Tfrmprincipal.GetConnectionWithSessionId(
  SessionId: String): TIdTCPConnection;
var
  PairEnum: TObjectDictionary<TIdTCPConnection, TDSTCPChannel>.TPairEnumerator;
  Conn: TIdTCPConnection;
  Channel: TDSTCPChannel;
begin
  Result := nil;

  if FConnections = nil then
    Exit;

  System.TMonitor.Enter(FConnections);
  try
    PairEnum := FConnections.GetEnumerator;
    while PairEnum.MoveNext do
    begin
      Conn := PairEnum.Current.Key;
      Channel := PairEnum.Current.Value;
      if (Channel <> nil) and (Channel.SessionId <> EmptyStr) then
      begin
        if Channel.SessionId = SessionId then
        begin
          Exit(Conn);
        end;
      end;
    end;
  finally
    System.TMonitor.Exit(FConnections);
  end;
end;

function Tfrmprincipal.GetSelectedChannel(
  Conn: TIdTCPConnection): TDSTCPChannel;
begin
  Result := nil;
  if Conn = nil then
    Conn := GetSelectedConnection;
  if Conn <> nil then
    FConnections.TryGetValue(Conn, Result)
end;


function Tfrmprincipal.GetSelectedConnection: TIdTCPConnection;
var
  I, Count, Index: Integer;
  Obj: TObject;
begin
  Result := nil;
  Index := -1;
  Count := ConnectionsList.Count;
 if Count > 0 then
  begin
    for I := 0 to Count - 1 do
    begin
      if ConnectionsList.Selected[I] then
      begin
        Index := I;
        break;
      end;
    end;
    if Index > -1 then
    begin
      Obj := ConnectionsList.Items.Objects[Index];
      if Obj <> nil then
        Exit(TIdTCPConnection(Obj));
    end;
  end;
end;

function Tfrmprincipal.GetSessionIdConnectionIndex(SessionId: String): Integer;
var
  Conn: TIdTCPConnection;
begin
  Result := -1;
  Conn := GetConnectionWithSessionId(SessionId);
  if Conn <> nil then
    Exit(ConnectionsList.Items.IndexOfObject(Conn));
end;

procedure Tfrmprincipal.PrepareForGracefulClose;
begin
  FreeAndNil(FConnections);
end;

procedure Tfrmprincipal.thrashUpdateClick(Sender: TObject);
begin
  if (thrashCountEdit.Text <> EmptyStr) and (maxRequestsEdit.Text <> EmptyStr) then
  begin
    ServerContainer1.ThrashingWindow := StrToInt(thrashCountEdit.Text);
    ServerContainer1.MaxRequestsInWindow := StrToInt(maxRequestsEdit.Text);
  end;
end;
procedure Tfrmprincipal.useKeepAliveCheckClick(Sender: TObject);
begin
  KAIdleLabel.Enabled := useKeepAliveCheck.Checked;
  KAIdleMS.Enabled := useKeepAliveCheck.Checked;
end;

end.

