object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 475
  ClientWidth = 932
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 86
    Height = 13
    Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100' '#1087#1086':'
  end
  object SortBy: TComboBox
    Left = 116
    Top = 21
    Width = 145
    Height = 21
    TabOrder = 0
    Text = #1042#1080#1076' '#1089#1086#1088#1090#1080#1088#1086#1074#1082#1080
    OnChange = SortByChange
    Items.Strings = (
      #1053#1077#1090
      #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      #1040#1074#1090#1086#1088)
  end
  object MainTable: TStringGrid
    Left = 8
    Top = 48
    Width = 915
    Height = 377
    ColCount = 6
    DefaultColWidth = 151
    FixedCols = 0
    TabOrder = 1
  end
  object AddButton: TButton
    Left = 24
    Top = 431
    Width = 86
    Height = 33
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 2
    OnClick = AddButtonClick
  end
  object DelButton: TButton
    Left = 128
    Top = 431
    Width = 86
    Height = 33
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 3
    OnClick = DelButtonClick
  end
  object CreateButton: TButton
    Left = 232
    Top = 431
    Width = 86
    Height = 33
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 4
    OnClick = CreateButtonClick
  end
  object SearchButton: TButton
    Left = 336
    Top = 431
    Width = 86
    Height = 33
    Caption = #1055#1086#1080#1089#1082
    TabOrder = 5
    OnClick = SearchButtonClick
  end
  object ShowAllButton: TButton
    Left = 440
    Top = 431
    Width = 86
    Height = 33
    Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1074#1089#1077
    TabOrder = 6
    OnClick = ShowAllButtonClick
  end
end
