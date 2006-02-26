object MainForm: TMainForm
  Left = 347
  Top = 240
  BorderStyle = bsSingle
  ClientHeight = 129
  ClientWidth = 127
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 127
    Height = 129
    Align = alClient
    Alignment = taCenter
    Caption = 'Keyboard is locked...'
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 5263440
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Layout = tlCenter
    WordWrap = True
  end
end
