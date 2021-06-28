object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
  ClientHeight = 109
  ClientWidth = 531
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 5
    Top = 8
    Width = 13
    Height = 17
    Caption = '1:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 274
    Top = 8
    Width = 13
    Height = 17
    Caption = '2:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Combo1: TComboBox
    Left = 24
    Top = 8
    Width = 225
    Height = 21
    Style = csDropDownList
    TabOrder = 0
    OnChange = Combo1Change
    Items.Strings = (
      #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      #1040#1074#1090#1086#1088)
  end
  object Confirm: TButton
    Left = 373
    Top = 51
    Width = 145
    Height = 40
    Caption = #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1100
    TabOrder = 1
    OnClick = ConfirmClick
  end
  object Edit1: TEdit
    Left = 293
    Top = 8
    Width = 225
    Height = 21
    TabOrder = 2
  end
end
