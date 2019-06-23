object frmLocVendas: TfrmLocVendas
  Left = 0
  Top = 0
  Caption = 'Consulta de Vendas'
  ClientHeight = 325
  ClientWidth = 714
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 249
    Top = 0
    Width = 465
    Height = 325
    Align = alClient
    DataSource = dm.dsLocVendas
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 249
    Height = 325
    Align = alLeft
    TabOrder = 1
    object rgSelecao: TRadioGroup
      Left = 3
      Top = 8
      Width = 217
      Height = 96
      Caption = ' Seleciona por '
      Items.Strings = (
        'C'#243'digo'
        'Dt.Venda'
        'Cliente'
        'Vendedor')
      TabOrder = 0
    end
    object rgOrdem: TRadioGroup
      Left = 3
      Top = 112
      Width = 217
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
      Top = 227
      Width = 185
      Height = 21
      TabOrder = 2
    end
    object btLocalizar: TButton
      Left = 70
      Top = 271
      Width = 75
      Height = 25
      Caption = 'Localizar'
      TabOrder = 3
      OnClick = btLocalizarClick
    end
  end
end
