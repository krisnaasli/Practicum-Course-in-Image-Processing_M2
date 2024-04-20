object Form4: TForm4
  Left = 383
  Top = 551
  Width = 397
  Height = 327
  Caption = 'Form4'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 16
    Top = 16
    Width = 255
    Height = 255
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 232
    object FILE1: TMenuItem
      Caption = 'FILE'
      object MUATCITRA1: TMenuItem
        Caption = 'MUAT CITRA'
        OnClick = MUATCITRA1Click
      end
      object EXIT1: TMenuItem
        Caption = 'EXIT'
        OnClick = EXIT1Click
      end
    end
    object OEPRASI1: TMenuItem
      Caption = 'OEPRASI'
      OnClick = OEPRASI1Click
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 56
    Top = 232
  end
end
