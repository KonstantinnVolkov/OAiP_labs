object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 383
  ClientWidth = 363
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 111
    Top = 104
    Width = 18
    Height = 13
    Caption = #1058#1080#1087
  end
  object Label2: TLabel
    Left = 98
    Top = 48
    Width = 150
    Height = 13
    Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1085#1086#1074#1086#1075#1086' '#1101#1083#1077#1084#1077#1085#1090#1072
  end
  object Label3: TLabel
    Left = 56
    Top = 144
    Width = 73
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
  end
  object Label4: TLabel
    Left = 98
    Top = 187
    Width = 31
    Height = 13
    Caption = #1040#1074#1090#1086#1088
  end
  object Label5: TLabel
    Left = 103
    Top = 227
    Width = 26
    Height = 13
    Caption = #1062#1077#1085#1072
  end
  object Label6: TLabel
    Left = 68
    Top = 267
    Width = 61
    Height = 13
    Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
  end
  object EAddType: TEdit
    Left = 144
    Top = 101
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object EName: TEdit
    Left = 144
    Top = 141
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object EAuthor: TEdit
    Left = 144
    Top = 184
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object ECost: TEdit
    Left = 144
    Top = 224
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object EOther: TEdit
    Left = 144
    Top = 264
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object AddButton: TButton
    Left = 146
    Top = 313
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 5
    OnClick = AddButtonClick
  end
end
