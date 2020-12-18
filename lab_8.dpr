program lab_8;

uses
  Vcl.Forms,
  mainWindow in 'mainWindow.pas' {Form1},
  mbDataModule in 'mbDataModule.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
