object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 381
  ClientWidth = 347
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
    Left = 154
    Top = 24
    Width = 18
    Height = 13
    Caption = #1058#1080#1087
  end
  object Label2: TLabel
    Left = 130
    Top = 80
    Width = 73
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
  end
  object Label3: TLabel
    Left = 150
    Top = 136
    Width = 31
    Height = 13
    Caption = #1040#1074#1090#1086#1088
  end
  object Label4: TLabel
    Left = 155
    Top = 192
    Width = 26
    Height = 13
    Caption = #1062#1077#1085#1072
  end
  object Label5: TLabel
    Left = 138
    Top = 248
    Width = 61
    Height = 13
    Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
  end
  object TypeEdit: TEdit
    Left = 48
    Top = 43
    Width = 241
    Height = 21
    TabOrder = 0
    OnKeyPress = TypeEditKeyPress
  end
  object NameEdit: TEdit
    Left = 48
    Top = 99
    Width = 241
    Height = 21
    TabOrder = 1
    OnKeyPress = NameEditKeyPress
  end
  object AuthorEdit: TEdit
    Left = 48
    Top = 155
    Width = 241
    Height = 21
    TabOrder = 2
    OnKeyPress = AuthorEditKeyPress
  end
  object CostEdit: TEdit
    Left = 48
    Top = 211
    Width = 241
    Height = 21
    NumbersOnly = True
    TabOrder = 3
    OnKeyPress = CostEditKeyPress
  end
  object OtherEdit: TEdit
    Left = 48
    Top = 267
    Width = 241
    Height = 21
    TabOrder = 4
  end
  object AddButton: TButton
    Left = 203
    Top = 324
    Width = 86
    Height = 33
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 5
    OnClick = AddButtonClick
  end
  object CancelButton: TButton
    Left = 48
    Top = 324
    Width = 86
    Height = 33
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    TabOrder = 6
    OnClick = CancelButtonClick
  end
end
