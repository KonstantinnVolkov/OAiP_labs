object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 236
  ClientWidth = 881
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = bTableClick
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 881
    Height = 147
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    ExplicitWidth = 890
    object rgAmount: TRadioGroup
      Left = 8
      Top = 0
      Width = 416
      Height = 137
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1101#1083#1077#1084'.'
      ItemIndex = 2
      Items.Strings = (
        '10'
        '100'
        '2000')
      TabOrder = 0
    end
    object rgArray: TRadioGroup
      Left = 431
      Top = 0
      Width = 443
      Height = 137
      Caption = #1058#1080#1087' '#1084#1072#1089#1089#1080#1074#1072
      ItemIndex = 1
      Items.Strings = (
        #1057#1083#1091#1095#1072#1081#1085#1099#1081
        #1054#1090#1089#1086#1088#1090#1080#1088#1086#1074#1072#1085#1085#1099#1081
        #1054#1073#1088#1072#1090#1085#1086' '#1086#1090#1089#1086#1088#1090#1080#1088#1086#1074#1072#1085#1085#1099#1081)
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 147
    Width = 881
    Height = 89
    Align = alClient
    Color = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    ExplicitWidth = 890
    ExplicitHeight = 137
    object bGistagram: TButton
      Left = 8
      Top = 6
      Width = 416
      Height = 69
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1075#1080#1089#1090#1086#1075#1088#1072#1084#1084#1091
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = bGistagramClick
    end
    object bTable: TButton
      Left = 431
      Top = 6
      Width = 443
      Height = 66
      Caption = #1058#1072#1073#1083#1080#1094#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = bTableClick
    end
  end
end
