object Form3: TForm3
  Left = 344
  Top = 443
  Width = 510
  Height = 636
  Caption = 'Tampil Citra'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 120
    Top = 24
    Width = 313
    Height = 313
  end
  object ButtonMuatCitra: TButton
    Left = 16
    Top = 16
    Width = 75
    Height = 25
    Caption = 'MuatCitra'
    TabOrder = 0
    OnClick = ButtonMuatCitraClick
  end
  object CheckBoxCenter: TCheckBox
    Left = 16
    Top = 56
    Width = 97
    Height = 17
    Caption = 'Center'
    TabOrder = 1
    OnClick = CheckBoxCenterClick
  end
  object CheckBoxStretch: TCheckBox
    Left = 16
    Top = 88
    Width = 97
    Height = 17
    Caption = 'Stretch'
    TabOrder = 2
    OnClick = CheckBoxStretchClick
  end
  object CheckBoxProportional: TCheckBox
    Left = 16
    Top = 128
    Width = 97
    Height = 9
    Caption = 'Proportional'
    TabOrder = 3
    OnClick = CheckBoxProportionalClick
  end
  object CheckBoxAutoSize: TCheckBox
    Left = 16
    Top = 152
    Width = 97
    Height = 17
    Caption = 'AutoSize'
    TabOrder = 4
    OnClick = CheckBoxAutoSizeClick
  end
  object ButtonUkuranSemula: TButton
    Left = 16
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Ukuran semula'
    TabOrder = 5
    OnClick = ButtonUkuranSemulaClick
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Left = 128
    Top = 32
  end
end
