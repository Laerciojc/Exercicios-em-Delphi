object frm_Resultados: Tfrm_Resultados
  Left = 0
  Top = 0
  Caption = 'Resultados da Pesquisa'
  ClientHeight = 344
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 303
    Width = 505
    Height = 41
    Align = alBottom
    TabOrder = 0
    object btSair: TBitBtn
      Left = 414
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Sair'
      TabOrder = 0
      OnClick = btSairClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 505
    Height = 303
    Align = alClient
    TabOrder = 1
    object mmResultados: TMemo
      Left = 1
      Top = 1
      Width = 503
      Height = 301
      Align = alClient
      Lines.Strings = (
        '')
      TabOrder = 0
    end
  end
end
