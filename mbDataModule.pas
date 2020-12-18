unit mbDataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, System.Net.URLClient, System.Net.HttpClient,
  System.Net.HttpClientComponent;

type
  TDataModule1 = class(TDataModule)
    dbConnection: TFDConnection;
    producers: TDataSource;
    chipsets: TDataSource;
    ram: TDataSource;
    sockets: TDataSource;
    sound_chip: TDataSource;
    motherboards: TDataSource;
    MB_RAM: TDataSource;
    tbProducers: TFDTable;
    tbMothBo: TFDTable;
    tbChipsets: TFDTable;
    tbSockets: TFDTable;
    tbSoundChip: TFDTable;
    tbMBRAM: TFDTable;
    tbRAM: TFDTable;
    NetHTTPClient1: TNetHTTPClient;
    FDQuery1: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


end.
