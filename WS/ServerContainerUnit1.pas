unit ServerContainerUnit1;

interface

uses System.SysUtils, System.Classes,
  Datasnap.DSTCPServerTransport,
  Datasnap.DSHTTPCommon, Datasnap.DSHTTP,
  Datasnap.DSServer, Datasnap.DSCommonServer,
  Datasnap.DSClientMetadata, Datasnap.DSHTTPServiceProxyDispatcher,
  Datasnap.DSProxyJavaAndroid, Datasnap.DSProxyJavaBlackBerry,
  Datasnap.DSProxyObjectiveCiOS, Datasnap.DSProxyCsharpSilverlight,
  Datasnap.DSProxyFreePascal_iOS,
  Datasnap.DSAuth, IPPeerServer, Datasnap.DSMetadata, Datasnap.DSServerMetadata,
  Generics.Collections,  IndyPeerImpl;

type
  TServerContainer1 = class(TDataModule)
    DSServer1: TDSServer;
    DSTCPServerTransport1: TDSTCPServerTransport;
    DSHTTPService1: TDSHTTPService;
    DSHTTPServiceProxyDispatcher1: TDSHTTPServiceProxyDispatcher;
    DSProxyGenerator1: TDSProxyGenerator;
    DSServerMetaDataProvider1: TDSServerMetaDataProvider;
    DSServerClass1: TDSServerClass;
    CMAuthManager: TDSAuthenticationManager;
    procedure DSServerClass1GetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    FThrashingWindow: Integer;
    FMaxRequestsInWindow: Integer;
    FHitTimes: TObjectDictionary<String,TDateTime>;
    FHitCounts: TObjectDictionary<String,Integer>;
  public
   procedure SessionClosed(SessionId: String);

    property ThrashingWindow: Integer read FThrashingWindow write FThrashingWindow;
    property MaxRequestsInWindow: Integer read FMaxRequestsInWindow write FMaxRequestsInWindow;
  end;

var
  ServerContainer1: TServerContainer1;

implementation


{$R *.dfm}

uses Winapi.Windows, ServerMethodsUnit1, UPrincipal;

procedure TServerContainer1.DataModuleCreate(Sender: TObject);
begin
  FThrashingWindow := 1;
  FMaxRequestsInWindow := 65;

  FHitTimes := TObjectDictionary<String,TDateTime>.Create;
  FHitCounts := TObjectDictionary<String,Integer>.Create;
end;

procedure TServerContainer1.DataModuleDestroy(Sender: TObject);
begin
 frmprincipal.PrepareForGracefulClose;
end;

procedure TServerContainer1.DSServerClass1GetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := ServerMethodsUnit1.TServerMethods1;
end;


procedure TServerContainer1.SessionClosed(SessionId: String);
begin
 FHitTimes.Remove(SessionId);
  FHitCounts.Remove(SessionId);
end;

end.

