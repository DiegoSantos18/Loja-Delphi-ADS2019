object frmLocFornecedores: TfrmLocFornecedores
  Left = 0
  Top = 0
  Caption = 'Seleciona Fornecedores'
  ClientHeight = 362
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 185
    Height = 362
    Align = alLeft
    TabOrder = 0
    object rgSelecao: TRadioGroup
      Left = 2
      Top = 15
      Width = 181
      Height = 96
      Align = alTop
      Caption = ' Seleciona por '
      Items.Strings = (
        'C'#243'digo '
        'Descri'#231#227'o '
        'Cidade'
        'UF')
      TabOrder = 0
    end
    object rgOrdem: TRadioGroup
      Left = 3
      Top = 126
      Width = 185
      Height = 105
      Caption = 'Ordem de apresenta'#231#227'o'
      Items.Strings = (
        'Normal'
        'Ascendente'
        'Descendente')
      TabOrder = 1
    end
    object edBusca: TEdit
      Left = 24
      Top = 237
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object btLocalizar: TButton
      Left = 48
      Top = 264
      Width = 75
      Height = 25
      Caption = 'Localizar'
      TabOrder = 3
      OnClick = btLocalizarClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 185
    Top = 0
    Width = 599
    Height = 362
    Align = alClient
    DataSource = dm.dsLocFornec
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
