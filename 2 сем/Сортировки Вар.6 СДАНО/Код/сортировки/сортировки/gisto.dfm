object gistForm: TgistForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1043#1080#1089#1090#1086#1075#1088#1072#1084#1084#1099
  ClientHeight = 381
  ClientWidth = 510
  Color = clWhite
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Playtime Cyrillic'
  Font.Style = []
  OldCreateOrder = False
  OnDestroy = HideGist
  OnHide = HideGist
  OnShow = DrawGist
  PixelsPerInch = 96
  TextHeight = 22
  object Img: TImage
    Left = 0
    Top = 22
    Width = 510
    Height = 359
    Align = alClient
    ExplicitTop = 0
    ExplicitWidth = 457
    ExplicitHeight = 297
  end
  object gisLabel: TLabel
    Left = 0
    Top = 0
    Width = 510
    Height = 22
    Align = alTop
    Alignment = taCenter
    Caption = #1043#1080#1089#1090#1086#1075#1088#1072#1084#1084#1099' '#1076#1083#1103' '#1089#1086#1088#1090#1080#1088#1086#1074#1072#1085#1085#1099#1093' '#1084#1072#1089#1089#1080#1074#1086#1074' '#1080#1079' 10 '#1101#1083#1084'.'
    ExplicitWidth = 475
  end
end
