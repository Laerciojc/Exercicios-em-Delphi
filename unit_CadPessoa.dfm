object frm_CadPessoa: Tfrm_CadPessoa
  Left = 0
  Top = 0
  Caption = 'Cadastro de Pessoas'
  ClientHeight = 199
  ClientWidth = 438
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
    Top = 158
    Width = 438
    Height = 41
    Align = alBottom
    TabOrder = 0
    object btSalvar: TBitBtn
      Left = 67
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Salvar'
      TabOrder = 0
      OnClick = btSalvarClick
    end
    object btCancelar: TBitBtn
      Left = 184
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 1
      OnClick = btCancelarClick
    end
    object btSair: TBitBtn
      Left = 302
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Sair'
      TabOrder = 2
      OnClick = btSairClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 438
    Height = 158
    Align = alClient
    TabOrder = 1
    object Label1: TLabel
      Left = 131
      Top = 57
      Width = 34
      Height = 19
      Caption = 'Sexo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 67
      Top = 84
      Width = 98
      Height = 19
      Caption = 'Cor dos olhos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 53
      Top = 111
      Width = 112
      Height = 19
      Caption = 'Cor dos cabelos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 125
      Top = 30
      Width = 40
      Height = 19
      Caption = 'Idade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edIdade: TEdit
      Left = 184
      Top = 28
      Width = 75
      Height = 21
      MaxLength = 3
      NumbersOnly = True
      TabOrder = 0
      Text = 'edIdade'
    end
    object cbCorOlhos: TComboBox
      Left = 184
      Top = 82
      Width = 193
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 1
      Text = 'Selecione a cor dos olhos'
      Items.Strings = (
        'Selecione a cor dos olhos'
        'Azuis'
        'Verdes'
        'Castanhos')
    end
    object cbCorCab: TComboBox
      Left = 184
      Top = 109
      Width = 193
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 2
      Text = 'Selecione a cor dos cabelos'
      Items.Strings = (
        'Selecione a cor dos cabelos'
        'Louros'
        'Castanhos'
        'Pretos ')
    end
    object cbSexo: TComboBox
      Left = 184
      Top = 55
      Width = 193
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 3
      Text = 'Selecione o sexo'
      Items.Strings = (
        'Selecione o sexo'
        'Masculino'
        'Feminino')
    end
  end
end
