unit Unit_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  AdvSmoothButton, dxGDIPlusClasses, cyBaseSpeedButton, cySpeedButton,
  NxPageControl, Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Phys, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.VCLUI.Wait, FireDAC.Phys.FBDef,
  FireDAC.Phys.IBBase, FireDAC.Phys.FB, FireDAC.Comp.Client,
  FireDAC.VCLUI.Error, FireDAC.Comp.UI, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, QImport3Wizard,
  AdvSmoothPanel, AdvReflectionImage, Vcl.DBCtrls;

type
  Tfrmmigrador = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    DBGrid_clientes: TDBGrid;
    FDManager1: TFDManager;
    FDConnection1: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDGUIxErrorDialog1: TFDGUIxErrorDialog;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDQuery_clientes: TFDQuery;
    FDQuery_produtos: TFDQuery;
    FDQuery_fornecedores: TFDQuery;
    FDQuery_funcionarios: TFDQuery;
    FDQuery_contas_pagar: TFDQuery;
    FDQuery_contas_receber: TFDQuery;
    DataSource_clientes: TDataSource;
    Import_clientes: TQImport3Wizard;
    Import_produtos: TQImport3Wizard;
    DataSource_produtos: TDataSource;
    DBGrid_produtos: TDBGrid;
    AdvSmoothPanel1: TAdvSmoothPanel;
    AdvSmoothPanel2: TAdvSmoothPanel;
    AdvSmoothPanel3: TAdvSmoothPanel;
    AdvSmoothPanel4: TAdvSmoothPanel;
    AdvSmoothPanel5: TAdvSmoothPanel;
    AdvSmoothPanel6: TAdvSmoothPanel;
    AdvSmoothPanel7: TAdvSmoothPanel;
    cySpeedButton1: TcySpeedButton;
    cySpeedButton2: TcySpeedButton;
    cySpeedButton3: TcySpeedButton;
    cySpeedButton4: TcySpeedButton;
    cySpeedButton5: TcySpeedButton;
    cySpeedButton6: TcySpeedButton;
    DataSource_fornecedores: TDataSource;
    Import_fornecedores: TQImport3Wizard;
    DBGrid_fornecedores: TDBGrid;
    DBGrid_funcionarios: TDBGrid;
    DataSource_funcionarios: TDataSource;
    Import_funcionarios: TQImport3Wizard;
    Import_contas_pagar: TQImport3Wizard;
    Import_contas_receber: TQImport3Wizard;
    DataSource_contas_pagar: TDataSource;
    DataSource_contas_receber: TDataSource;
    DBGrid_contas_pagar: TDBGrid;
    DBGrid_contas_receber: TDBGrid;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    DBNavigator3: TDBNavigator;
    DBNavigator4: TDBNavigator;
    DBNavigator5: TDBNavigator;
    DBNavigator6: TDBNavigator;
    procedure cySpeedButton1Click(Sender: TObject);
    procedure cySpeedButton2Click(Sender: TObject);
    procedure cySpeedButton3Click(Sender: TObject);
    procedure cySpeedButton4Click(Sender: TObject);
    procedure cySpeedButton6Click(Sender: TObject);
    procedure cySpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmigrador: Tfrmmigrador;

implementation

{$R *.dfm}

procedure Tfrmmigrador.cySpeedButton1Click(Sender: TObject);
begin
  Import_clientes.Execute;
end;

procedure Tfrmmigrador.cySpeedButton2Click(Sender: TObject);
begin
  Import_produtos.Execute;
end;

procedure Tfrmmigrador.cySpeedButton3Click(Sender: TObject);
begin
  Import_fornecedores.Execute;
end;

procedure Tfrmmigrador.cySpeedButton4Click(Sender: TObject);
begin
  Import_funcionarios.Execute;
end;

procedure Tfrmmigrador.cySpeedButton5Click(Sender: TObject);
begin
  Import_contas_pagar.Execute;
end;

procedure Tfrmmigrador.cySpeedButton6Click(Sender: TObject);
begin
  Import_contas_receber.Execute;
end;

end.
