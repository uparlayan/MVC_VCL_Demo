object Kisi_View: TKisi_View
  Left = 0
  Top = 0
  Caption = 'Ki'#351'i Kart'#305
  ClientHeight = 211
  ClientWidth = 384
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    384
    211)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 28
    Top = 30
    Width = 13
    Height = 13
    Caption = 'Ad'
  end
  object Label2: TLabel
    Left = 28
    Top = 62
    Width = 30
    Height = 13
    Caption = 'Soyad'
  end
  object Label3: TLabel
    Left = 28
    Top = 94
    Width = 38
    Height = 13
    Caption = 'Cinsiyet'
  end
  object Label4: TLabel
    Left = 28
    Top = 126
    Width = 48
    Height = 13
    Caption = 'Do'#287'um Y'#305'l'#305
  end
  object edAd: TEdit
    Left = 110
    Top = 27
    Width = 242
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
  end
  object edSoyad: TEdit
    Left = 110
    Top = 59
    Width = 242
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
  end
  object cbCinsiyet: TComboBox
    Left = 110
    Top = 91
    Width = 242
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 2
    Items.Strings = (
      'Erkek'
      'Kad'#305'n')
  end
  object edDogumYili: TEdit
    Left = 110
    Top = 123
    Width = 242
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    NumbersOnly = True
    TabOrder = 3
  end
  object btOK: TButton
    Left = 183
    Top = 160
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'OK'
    TabOrder = 4
  end
  object btCancel: TButton
    Left = 277
    Top = 160
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Cancel'
    TabOrder = 5
  end
end
