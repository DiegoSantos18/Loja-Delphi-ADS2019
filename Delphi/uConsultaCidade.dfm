object frmConsultaCidade: TfrmConsultaCidade
  Left = 0
  Top = 0
  Caption = 'Consulta de Cidade'
  ClientHeight = 356
  ClientWidth = 620
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
    Left = 193
    Top = 0
    Width = 427
    Height = 356
    Align = alRight
    DataSource = dm.dsLocCidade
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object rgSelecao: TRadioGroup
    Left = 2
    Top = 8
    Width = 181
    Height = 96
    Caption = ' Seleciona por '
    Items.Strings = (
      'C'#243'digo'
      'Nome'
      'UF')
    TabOrder = 1
  end
  object btLocalizar: TButton
    Left = 40
    Top = 294
    Width = 75
    Height = 25
    Caption = 'Localizar'
    TabOrder = 2
    OnClick = btLocalizarClick
  end
  object edBusca: TEdit
    Left = 24
    Top = 251
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object rgOrdem: TRadioGroup
    Left = 2
    Top = 118
    Width = 185
    Height = 114
    Caption = 'Ordem de apresenta'#231#227'o'
    Items.Strings = (
      'Normal'
      'Ascendente'
      'Descendente')
    TabOrder = 4
  end
end
