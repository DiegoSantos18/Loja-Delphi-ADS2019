object dm: Tdm
  OldCreateOrder = False
  Height = 368
  Width = 860
  object fdConexao: TFDConnection
    Params.Strings = (
      'Database=C:\Loja\Banco\BANCOLOJA.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Server=localhost'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 296
    Top = 24
  end
  object tbProdutos: TFDTable
    Active = True
    OnCalcFields = tbProdutosCalcFields
    IndexName = 'PKPRODUTOS'
    Connection = fdConexao
    UpdateOptions.UpdateTableName = 'PRODUTOS'
    TableName = 'PRODUTOS'
    Left = 488
    Top = 96
    object tbProdutosCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      Origin = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbProdutosDCPRODUTO: TStringField
      FieldName = 'DCPRODUTO'
      Origin = 'DCPRODUTO'
      Size = 30
    end
    object tbProdutosVLPRODUTO: TFMTBCDField
      FieldName = 'VLPRODUTO'
      Origin = 'VLPRODUTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object tbProdutosQTESTOQUE: TFMTBCDField
      FieldName = 'QTESTOQUE'
      Origin = 'QTESTOQUE'
      Precision = 18
      Size = 2
    end
    object tbProdutosQTMINIMA: TFMTBCDField
      FieldName = 'QTMINIMA'
      Origin = 'QTMINIMA'
      Precision = 18
      Size = 2
    end
    object tbProdutosCDFORNECEDOR: TIntegerField
      FieldName = 'CDFORNECEDOR'
      Origin = 'CDFORNECEDOR'
      Required = True
    end
    object tbProdutossugestaocompra: TFloatField
      FieldKind = fkCalculated
      FieldName = 'sugestaocompra'
      KeyFields = 'CDPRODUTO'
      Calculated = True
    end
  end
  object tbItens: TFDTable
    Active = True
    BeforeInsert = tbItensBeforeInsert
    BeforePost = tbItensBeforePost
    OnCalcFields = tbItensCalcFields
    OnNewRecord = tbItensNewRecord
    IndexName = 'PKITENS'
    MasterSource = dsVendas
    MasterFields = 'NRVENDA'
    Connection = fdConexao
    UpdateOptions.UpdateTableName = 'ITENS'
    TableName = 'ITENS'
    Left = 544
    Top = 96
    object tbItensNRVENDA: TIntegerField
      FieldName = 'NRVENDA'
      Origin = 'NRVENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbItensNRITEM: TIntegerField
      FieldName = 'NRITEM'
      Origin = 'NRITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbItensCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      Origin = 'CDPRODUTO'
      Required = True
    end
    object tbItensDCPRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = 'DCPRODUTO'
      LookupDataSet = tbProdutos
      LookupKeyFields = 'CDPRODUTO'
      LookupResultField = 'DCPRODUTO'
      KeyFields = 'CDPRODUTO'
      Size = 30
      Lookup = True
    end
    object tbItensQTVENDA: TFMTBCDField
      FieldName = 'QTVENDA'
      Origin = 'QTVENDA'
      Required = True
      Precision = 18
      Size = 2
    end
    object tbItensVLPRODUTO: TFMTBCDField
      FieldName = 'VLPRODUTO'
      Origin = 'VLPRODUTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object tbItensVLTOTAL: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'VLTOTAL'
      Calculated = True
    end
    object tbItensVLUNIT: TCurrencyField
      FieldKind = fkLookup
      FieldName = 'VLUNIT'
      LookupDataSet = tbProdutos
      LookupKeyFields = 'CDPRODUTO'
      LookupResultField = 'VLPRODUTO'
      KeyFields = 'CDPRODUTO'
      Lookup = True
    end
  end
  object tbVendedores: TFDTable
    Active = True
    IndexName = 'PKVENDEDORES'
    Connection = fdConexao
    UpdateOptions.UpdateTableName = 'VENDEDORES'
    TableName = 'VENDEDORES'
    Left = 264
    Top = 112
    object tbVendedoresCDVENDEDOR: TIntegerField
      FieldName = 'CDVENDEDOR'
      Origin = 'CDVENDEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbVendedoresDCVENDEDOR: TStringField
      FieldName = 'DCVENDEDOR'
      Origin = 'DCVENDEDOR'
      Size = 30
    end
  end
  object tbVendas: TFDTable
    Active = True
    IndexName = 'PKVENDAS'
    Connection = fdConexao
    UpdateOptions.UpdateTableName = 'VENDAS'
    TableName = 'VENDAS'
    Left = 600
    Top = 96
    object tbVendasNRVENDA: TIntegerField
      FieldName = 'NRVENDA'
      Origin = 'NRVENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbVendasDTVENDA: TDateField
      FieldName = 'DTVENDA'
      Origin = 'DTVENDA'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object tbVendasCDCLIENTE: TIntegerField
      FieldName = 'CDCLIENTE'
      Origin = 'CDCLIENTE'
      Required = True
    end
    object tbVendasCDVENDEDOR: TIntegerField
      FieldName = 'CDVENDEDOR'
      Origin = 'CDVENDEDOR'
      Required = True
    end
  end
  object dsFornec: TDataSource
    DataSet = tbFornecedores
    Left = 88
    Top = 152
  end
  object dsProd: TDataSource
    DataSet = tbProdutos
    Left = 488
    Top = 152
  end
  object dsVendedor: TDataSource
    DataSet = tbVendedores
    Left = 264
    Top = 160
  end
  object dsCli: TDataSource
    DataSet = tbClientes
    Left = 16
    Top = 152
  end
  object dsItens: TDataSource
    DataSet = tbItens
    Left = 544
    Top = 152
  end
  object dsVendas: TDataSource
    DataSet = tbVendas
    Left = 600
    Top = 152
  end
  object getUltItem: TFDQuery
    Active = True
    Connection = fdConexao
    SQL.Strings = (
      'SELECT MAX(NRITEM) AS ULTITEM'
      'FROM ITENS'
      'WHERE ITENS.NRVENDA = :NRVENDA')
    Left = 544
    Top = 216
    ParamData = <
      item
        Name = 'NRVENDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object qrFornecedores: TFDQuery
    Connection = fdConexao
    SQL.Strings = (
      '')
    Left = 88
    Top = 280
  end
  object dsLocFornec: TDataSource
    DataSet = qrFornecedores
    Left = 88
    Top = 224
  end
  object qrClientes: TFDQuery
    Connection = fdConexao
    SQL.Strings = (
      '')
    Left = 16
    Top = 280
  end
  object dsLocClientes: TDataSource
    DataSet = qrClientes
    Left = 16
    Top = 224
  end
  object qrVendedores: TFDQuery
    Connection = fdConexao
    SQL.Strings = (
      '')
    Left = 264
    Top = 280
  end
  object dsLocVendedores: TDataSource
    DataSet = qrVendedores
    Left = 264
    Top = 224
  end
  object qrProdutos: TFDQuery
    Connection = fdConexao
    SQL.Strings = (
      '')
    Left = 488
    Top = 280
  end
  object dsLocProdutos: TDataSource
    DataSet = qrProdutos
    Left = 488
    Top = 216
  end
  object dsCidades: TDataSource
    DataSet = tbCidades
    Left = 368
    Top = 160
  end
  object tbCidades: TFDTable
    Active = True
    IndexName = 'PKCODIGO'
    Connection = fdConexao
    UpdateOptions.UpdateTableName = 'CIDADES'
    TableName = 'CIDADES'
    Left = 368
    Top = 104
    object tbCidadesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object tbCidadesNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object tbCidadesUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
  end
  object qrUF: TFDQuery
    Active = True
    Connection = fdConexao
    SQL.Strings = (
      'SELECT distinct c.uf'
      'FROM CIDADES c'
      '')
    Left = 400
    Top = 280
  end
  object qrCidade: TFDQuery
    Active = True
    Connection = fdConexao
    SQL.Strings = (
      'SELECT c.codigo,c.nome'
      'FROM CIDADES c'
      'WHERE c.uf = :pUf'
      'order by c.nome'
      ''
      '')
    Left = 344
    Top = 280
    ParamData = <
      item
        Name = 'PUF'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 2
        Value = Null
      end>
  end
  object tbClientes: TFDTable
    Active = True
    IndexName = 'PKCLIENTES'
    Connection = fdConexao
    UpdateOptions.UpdateTableName = 'CLIENTES'
    TableName = 'CLIENTES'
    Left = 16
    Top = 104
  end
  object tbFornecedores: TFDTable
    Active = True
    IndexName = 'PKFORNECEDORES'
    Connection = fdConexao
    UpdateOptions.UpdateTableName = 'FORNECEDORES'
    TableName = 'FORNECEDORES'
    Left = 80
    Top = 104
    object tbFornecedoresCDFORNECEDOR: TIntegerField
      FieldName = 'CDFORNECEDOR'
      Origin = 'CDFORNECEDOR'
      Required = True
    end
    object tbFornecedoresDCFORNECEDOR: TStringField
      FieldName = 'DCFORNECEDOR'
      Origin = 'DCFORNECEDOR'
      Size = 30
    end
    object tbFornecedoresENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 40
    end
    object tbFornecedoresBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
    end
    object tbFornecedoresCIDADE: TIntegerField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
    end
    object tbFornecedoresTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 10
    end
    object tbFornecedoresCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 8
    end
  end
  object dsLocCidade: TDataSource
    DataSet = qrCidade
    Left = 344
    Top = 224
  end
  object dsLocUF: TDataSource
    DataSet = qrUF
    Left = 400
    Top = 224
  end
  object dsLocListaFornec: TDataSource
    DataSet = qrListaFornec
    Left = 176
    Top = 224
  end
  object qrListaFornec: TFDQuery
    Active = True
    Connection = fdConexao
    SQL.Strings = (
      'SELECT CDFORNECEDOR,DCFORNECEDOR'
      'FROM FORNECEDORES')
    Left = 168
    Top = 280
  end
  object qrCidCli: TFDQuery
    Active = True
    Connection = fdConexao
    SQL.Strings = (
      'SELECT CLI.*'
      '   ,CID.NOME,CID.UF'
      
        'FROM CLIENTES CLI LEFT JOIN CIDADES CID ON CLI.CIDADE = CID.CODI' +
        'GO')
    Left = 688
    Top = 296
  end
  object dsCidCli: TDataSource
    DataSet = qrCidCli
    Left = 696
    Top = 216
  end
  object dsLocVendas: TDataSource
    DataSet = qrVendas
    Left = 608
    Top = 216
  end
  object qrVendas: TFDQuery
    Connection = fdConexao
    Left = 608
    Top = 288
  end
  object dsVenCliVend: TDataSource
    DataSet = qrVenCliVend
    Left = 752
    Top = 216
  end
  object qrVenCliVend: TFDQuery
    Connection = fdConexao
    SQL.Strings = (
      'SELECT VEN.*'
      
        '   ,CLI.DCCLIENTE,VEND.DCVENDEDOR,IT.NRVENDA,P.CDPRODUTO,IT.NRIT' +
        'EM,P.DCPRODUTO,IT.VLPRODUTO,IT.QTVENDA'
      'FROM VENDAS VEN '
      'LEFT JOIN CLIENTES CLI ON CLI.CDCLIENTE = VEN.CDCLIENTE'
      'LEFT JOIN VENDEDORES VEND ON VEND.CDVENDEDOR = VEN.CDVENDEDOR '
      'LEFT JOIN ITENS IT ON IT.NRVENDA = VEN.NRVENDA'
      'LEFT JOIN PRODUTOS P ON P.CDPRODUTO = IT.CDPRODUTO')
    Left = 744
    Top = 296
  end
end
