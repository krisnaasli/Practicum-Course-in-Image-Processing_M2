unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtDlgs, ExtCtrls;

type
  TForm4 = class(TForm)
    MainMenu1: TMainMenu;
    Image1: TImage;
    OpenPictureDialog1: TOpenPictureDialog;
    FILE1: TMenuItem;
    MUATCITRA1: TMenuItem;
    EXIT1: TMenuItem;
    OEPRASI1: TMenuItem;
    procedure OEPRASI1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MUATCITRA1Click(Sender: TObject);
    procedure EXIT1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.OEPRASI1Click(Sender: TObject);
var
  X, Y: Integer;
  TempBitmap: TBitmap;
begin
  if not Image1.Picture.Bitmap.Empty then
  begin
    TempBitmap := TBitmap.Create;
    try
      TempBitmap.Assign(Image1.Picture.Bitmap); // Salin gambar ke bitmap sementara

      // Lakukan flip horizontal dengan membalik posisi piksel
      for Y := 0 to TempBitmap.Height - 1 do
      begin
        for X := 0 to TempBitmap.Width - 1 do
        begin
          TempBitmap.Canvas.Pixels[X, Y] :=
            TempBitmap.Canvas.Pixels[TempBitmap.Width - 1 - X, Y];
        end;
      end;

      // Tampilkan hasil flip pada Image1
      Image1.Picture.Bitmap.Assign(TempBitmap);
    finally
      TempBitmap.Free;
    end;
  end;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
  // Code yang akan dijalankan saat pembuatan form
end;

procedure TForm4.MUATCITRA1Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
  end;
end;

procedure TForm4.EXIT1Click(Sender: TObject);
begin
  Close; // Menutup form saat tombol Exit ditekan
end;

end.

