unit mainWindow;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, mbDataModule;

  , JPEG, PNGImage;

type
  TForm1 = class(TForm)
    gridProducers: TDBGrid;
    gridMotherboards: TDBGrid;
    gridChipsets: TDBGrid;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel1: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    procedure FormShow(Sender: TObject);
    procedure gridProducersCellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  lResponse : TMemoryStream;
  lUrl : string;
  lJPEG : TJPEGImage;
  lPNG: TPNGImage;

implementation

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
begin
  lUrl := mbDataModule.DataModule1.tbMothBo.FieldByName('logo').Value;
  lResponse := TMemoryStream.Create;
  mbDataModule.DataModule1.NetHTTPClient1.Get(lUrl, lResponse);
  lResponse.Seek(0,soFromBeginning);

  if lUrl.EndsWith('.png') then
  begin
    lPNG := TPNGImage.Create;
    lPNG.LoadFromStream(lResponse);
    Form1.Image1.Picture.Assign(lPNG);
    lPNG.Free;
  end;

  if lUrl.EndsWith('.jpg') or lUrl.EndsWith( '.jpeg' ) then
  begin
    lJPEG := TJPEGImage.Create;
    lJPEG.LoadFromStream(lResponse);
    Form1.Image1.Picture.Assign(lJPEG);
    lJPEG.Free;
  end;
end;

procedure TForm1.gridProducersCellClick(Column: TColumn);
begin
  lUrl := mbDataModule.DataModule1.tbMothBo.FieldByName('logo').Value;
  lResponse := TMemoryStream.Create;
  mbDataModule.DataModule1.NetHTTPClient1.Get(lUrl, lResponse);
  lResponse.Seek(0,soFromBeginning);

  if lUrl.EndsWith('.png') then
  begin
    lPNG := TPNGImage.Create;
    lPNG.LoadFromStream(lResponse);
    Form1.Image1.Picture.Assign(lPNG);
    lPNG.Free;
  end;

  if lUrl.EndsWith('.jpg') or lUrl.EndsWith( '.jpeg' ) then
  begin
    lJPEG := TJPEGImage.Create;
    lJPEG.LoadFromStream(lResponse);
    Form1.Image1.Picture.Assign(lJPEG);
    lJPEG.Free;
  end;
end;
end.
