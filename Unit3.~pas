unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtDlgs, ExtCtrls, StdCtrls;

type
  TForm3 = class(TForm)
    ButtonMuatCitra: TButton;
    CheckBoxCenter: TCheckBox;
    CheckBoxStretch: TCheckBox;
    CheckBoxProportional: TCheckBox;
    CheckBoxAutoSize: TCheckBox;
    ButtonUkuranSemula: TButton;
    Image1: TImage;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure FormCreate(Sender: TObject);
    procedure ButtonMuatCitraClick(Sender: TObject);
    procedure ButtonUkuranSemulaClick(Sender: TObject);
    procedure CheckBoxCenterClick(Sender: TObject);
    procedure CheckBoxStretchClick(Sender: TObject);
    procedure CheckBoxProportionalClick(Sender: TObject);
    procedure CheckBoxAutoSizeClick(Sender: TObject);
  private
    { Private declarations }
    LebarAwal: Integer;
    TinggiAwal: Integer;
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.FormCreate(Sender: TObject);
begin
  LebarAwal := Image1.Width;
  TinggiAwal := Image1.Height;
end;

procedure TForm3.ButtonMuatCitraClick(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
  end;
end;

procedure TForm3.ButtonUkuranSemulaClick(Sender: TObject);
begin
  Image1.AutoSize := False;
  CheckBoxAutoSize.Checked := False;
  Image1.Width := LebarAwal;
  Image1.Height := TinggiAwal;

  // Menetapkan properti Checked dari setiap checkbox menjadi False
  CheckBoxCenter.Checked := False;
  CheckBoxStretch.Checked := False;
  CheckBoxProportional.Checked := False;
end;

procedure TForm3.CheckBoxCenterClick(Sender: TObject);
begin
  Image1.Center := CheckBoxCenter.Checked;
end;

procedure TForm3.CheckBoxStretchClick(Sender: TObject);
begin
  Image1.Stretch := CheckBoxStretch.Checked;
end;

procedure TForm3.CheckBoxProportionalClick(Sender: TObject);
begin
  Image1.Proportional := CheckBoxProportional.Checked;
end;

procedure TForm3.CheckBoxAutoSizeClick(Sender: TObject);
begin
  Image1.AutoSize := CheckBoxAutoSize.Checked;
  Image1.Proportional := not CheckBoxAutoSize.Checked; // Menambahkan logika untuk properti Proportional
  if CheckBoxAutoSize.Checked then
  begin
    Image1.Stretch := False;
    CheckBoxStretch.Checked := False;
  end;
end;

end.

