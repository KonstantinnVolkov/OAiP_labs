object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 578
  ClientWidth = 1034
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
    Top = 16
    Width = 86
    Height = 13
    Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100' '#1087#1086':'
  end
  object Label2: TLabel
    Left = 309
    Top = 16
    Width = 34
    Height = 13
    Caption = #1055#1086#1080#1089#1082':'
  end
  object Label3: TLabel
    Left = 791
    Top = 105
    Width = 18
    Height = 13
    Caption = #1058#1080#1087
  end
  object Label4: TLabel
    Left = 778
    Top = 49
    Width = 150
    Height = 13
    Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1085#1086#1074#1086#1075#1086' '#1101#1083#1077#1084#1077#1085#1090#1072
  end
  object Label5: TLabel
    Left = 736
    Top = 145
    Width = 73
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
  end
  object Label6: TLabel
    Left = 778
    Top = 188
    Width = 31
    Height = 13
    Caption = #1040#1074#1090#1086#1088
  end
  object Label7: TLabel
    Left = 783
    Top = 228
    Width = 26
    Height = 13
    Caption = #1062#1077#1085#1072
  end
  object Label8: TLabel
    Left = 748
    Top = 268
    Width = 61
    Height = 13
    Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
  end
  object DataSG: TStringGrid
    Left = 24
    Top = 49
    Width = 665
    Height = 296
    DefaultColWidth = 85
    TabOrder = 0
    OnClick = DataSGClick
  end
  object SortCB: TComboBox
    Left = 119
    Top = 13
    Width = 145
    Height = 21
    TabOrder = 1
    Text = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072
    Items.Strings = (
      #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      #1040#1074#1090#1086#1088)
  end
  object SearchE: TEdit
    Left = 349
    Top = 13
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object DeleteButton: TButton
    Left = 128
    Top = 365
    Width = 86
    Height = 36
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 3
  end
  object SearchButton: TButton
    Left = 492
    Top = 13
    Width = 75
    Height = 21
    Caption = #1053#1072#1081#1090#1080
    TabOrder = 4
  end
  object EAddType: TEdit
    Left = 824
    Top = 102
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object EName: TEdit
    Left = 824
    Top = 142
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object EAuthor: TEdit
    Left = 824
    Top = 185
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object ECost: TEdit
    Left = 824
    Top = 225
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object EOther: TEdit
    Left = 824
    Top = 265
    Width = 121
    Height = 21
    TabOrder = 9
  end
  object AddButton: TButton
    Left = 826
    Top = 314
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 10
    OnClick = AddButtonClick
  end
end
