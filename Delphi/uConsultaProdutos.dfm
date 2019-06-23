object frmLocProdutos: TfrmLocProdutos
  Left = 0
  Top = 0
  Caption = 'Consulta Produtos'
  ClientHeight = 362
  ClientWidth = 890
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
        'C'#243'digo'
        'Descri'#231#227'o')
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
      Left = 9
      Top = 264
      Width = 163
      Height = 21
      TabOrder = 2
    end
    object btLocalizar: TButton
      Left = 9
      Top = 291
      Width = 163
      Height = 25
      Caption = 'Localizar'
      TabOrder = 3
      OnClick = btLocalizarClick
    end
    object cbOpProduto: TComboBox
      Left = 9
      Top = 237
      Width = 163
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 4
      Text = 'Todos os produtos'
      Items.Strings = (
        'Todos os produtos'
        'Com necessidade de compra')
    end
  end
  object DBGrid1: TDBGrid
    Left = 185
    Top = 0
    Width = 705
    Height = 362
    Align = alClient
    DataSource = dm.dsLocProdutos
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CDPRODUTO'
        Title.Caption = 'C'#211'DIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DCPRODUTO'
        Title.Caption = 'PRODUTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLPRODUTO'
        Title.Caption = 'VL. PRODUTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTESTOQUE'
        Title.Caption = 'QTD. ESTOQUE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTMINIMA'
        Title.Caption = 'QTD. MINIMA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CDFORNECEDOR'
        Title.Caption = 'FORNECEDOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sugestaocompra'
        Title.Caption = 'SUGEST'#195'O COMPRA'
        Visible = True
      end>
  end
end
