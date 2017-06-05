unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtDlgs, UniProvider,
  ODBCUniProvider, AccessUniProvider, MemDS, DBAccess, Uni, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.JConsts, Vcl.Imaging.jpeg;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    Button1: TButton;
    Image1: TImage;
    Button2: TButton;
    UniConnection1: TUniConnection;
    UniQuery1: TUniQuery;
    AccessUniProvider1: TAccessUniProvider;
    DataSource1: TDataSource;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
 if OpenPictureDialog1.Execute then
 begin
   DBEdit3.Text := OpenPictureDialog1.FileName;
   Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
 end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 UniQuery1.Append;
end;

procedure TForm1.DBGrid1DblClick(Sender: TObject);
begin
 Image1.Picture.LoadFromFile(UniQuery1.FieldByName('Resim').AsString);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  TPicture.RegisterFileFormat('JPEG', sJPEGImageFile, TJPEGImage);
 UniConnection1.ProviderName := 'Access';
 UniConnection1.Database := ExtractFilePath(Application.ExeName) + '\data.mdb';

 UniQuery1.Connection := UniConnection1;
 UniQuery1.Close;
 UniQuery1.SQL.Text := 'select * from kisiler';
 UniQuery1.Open;

 DataSource1.DataSet := UniQuery1;
 DBGrid1.DataSource := DataSource1;

 DBEdit1.DataSource := DataSource1;
 DBEdit2.DataSource := DataSource1;
 DBEdit3.DataSource := DataSource1;


 DBEdit1.DataField := 'Ad';
 DBEdit2.DataField := 'Soyad';
 DBEdit3.DataField := 'Resim';
end;

end.
