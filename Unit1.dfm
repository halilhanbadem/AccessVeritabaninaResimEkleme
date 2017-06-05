object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Resim Ekleme'
  ClientHeight = 378
  ClientWidth = 547
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 16
    Width = 32
    Height = 13
    Caption = 'Ad'#305'n'#305'z:'
  end
  object Label2: TLabel
    Left = 48
    Top = 64
    Width = 49
    Height = 13
    Caption = 'Soyad'#305'n'#305'z:'
  end
  object Label3: TLabel
    Left = 48
    Top = 112
    Width = 32
    Height = 13
    Caption = 'Resim:'
  end
  object Image1: TImage
    Left = 392
    Top = 32
    Width = 113
    Height = 117
    Center = True
    Stretch = True
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 242
    Width = 547
    Height = 136
    Align = alBottom
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
  end
  object DBEdit1: TDBEdit
    Left = 48
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 48
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 48
    Top = 128
    Width = 209
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 263
    Top = 126
    Width = 33
    Height = 25
    Caption = '...'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 208
    Top = 192
    Width = 113
    Height = 34
    Caption = 'Ekle'
    TabOrder = 5
    OnClick = Button2Click
  end
  object UniConnection1: TUniConnection
    Left = 64
    Top = 296
  end
  object UniQuery1: TUniQuery
    Connection = UniConnection1
    Left = 144
    Top = 296
  end
  object AccessUniProvider1: TAccessUniProvider
    Left = 232
    Top = 296
  end
  object DataSource1: TDataSource
    Left = 328
    Top = 296
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 416
    Top = 296
  end
end
