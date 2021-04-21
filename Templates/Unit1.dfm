object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LTECard1: TLTECard
    Left = 8
    Top = 64
    Width = 622
    Height = 118
    TabOrder = 0
    TextTitle = 'INVENT'#193'RIO DE VENDAS'
    TextValue = 420.690000000000000000
    ProgressValue = 0
    BackgroundPanel1 = clBlack
  end
  object Button1: TButton
    Left = 280
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Clique!'
    TabOrder = 1
    OnClick = Button1Click
  end
end
