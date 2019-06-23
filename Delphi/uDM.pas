unit uDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tdm = class(TDataModule)
    fdConexao: TFDConnection;
    tbProdutos: TFDTable;
    tbItens: TFDTable;
    tbVendedores: TFDTable;
    tbVendas: TFDTable;
    tbItensNRVENDA: TIntegerField;
    tbItensNRITEM: TIntegerField;
    tbItensCDPRODUTO: TIntegerField;
    tbItensQTVENDA: TFMTBCDField;
    tbItensVLPRODUTO: TFMTBCDField;
    tbProdutosCDPRODUTO: TIntegerField;
    tbProdutosDCPRODUTO: TStringField;
    tbProdutosVLPRODUTO: TFMTBCDField;
    tbProdutosQTESTOQUE: TFMTBCDField;
    tbProdutosQTMINIMA: TFMTBCDField;
    tbProdutosCDFORNECEDOR: TIntegerField;
    tbVendasNRVENDA: TIntegerField;
    tbVendasDTVENDA: TDateField;
    tbVendasCDCLIENTE: TIntegerField;
    tbVendasCDVENDEDOR: TIntegerField;
    dsFornec: TDataSource;
    dsProd: TDataSource;
    dsVendedor: TDataSource;
    dsCli: TDataSource;
    dsItens: TDataSource;
    dsVendas: TDataSource;
    tbVendedoresCDVENDEDOR: TIntegerField;
    tbVendedoresDCVENDEDOR: TStringField;
    tbItensDCPRODUTO: TStringField;
    tbItensVLTOTAL: TCurrencyField;
    getUltItem: TFDQuery;
    tbItensVLUNIT: TCurrencyField;
    qrFornecedores: TFDQuery;
    dsLocFornec: TDataSource;
    qrClientes: TFDQuery;
    dsLocClientes: TDataSource;
    qrVendedores: TFDQuery;
    dsLocVendedores: TDataSource;
    qrProdutos: TFDQuery;
    dsLocProdutos: TDataSource;
    tbProdutossugestaocompra: TFloatField;
    dsCidades: TDataSource;
    tbCidades: TFDTable;
    qrUF: TFDQuery;
    qrCidade: TFDQuery;
    tbClientes: TFDTable;
    tbFornecedores: TFDTable;
    dsLocCidade: TDataSource;
    dsLocUF: TDataSource;
    tbCidadesCODIGO: TIntegerField;
    tbCidadesNOME: TStringField;
    tbCidadesUF: TStringField;
    dsLocListaFornec: TDataSource;
    qrListaFornec: TFDQuery;
    tbFornecedoresCDFORNECEDOR: TIntegerField;
    tbFornecedoresDCFORNECEDOR: TStringField;
    tbFornecedoresENDERECO: TStringField;
    tbFornecedoresBAIRRO: TStringField;
    tbFornecedoresCIDADE: TIntegerField;
    tbFornecedoresTELEFONE: TStringField;
    tbFornecedoresCEP: TStringField;
    qrCidCli: TFDQuery;
    dsCidCli: TDataSource;
    dsLocVendas: TDataSource;
    qrVendas: TFDQuery;
    dsVenCliVend: TDataSource;
    qrVenCliVend: TFDQuery;
    procedure tbItensCalcFields(DataSet: TDataSet);
    procedure tbItensBeforeInsert(DataSet: TDataSet);
    procedure tbItensNewRecord(DataSet: TDataSet);
    procedure tbProdutosCalcFields(DataSet: TDataSet);
    procedure tbItensBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    numitem : integer;
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure Tdm.tbItensBeforeInsert(DataSet: TDataSet);
begin
     tbVendas.Post;
     tbVendas.Edit;

     getUltItem.Close;
     getUltItem.ParamByName('NRVENDA').AsInteger :=
                                    tbVendasNRVENDA.AsInteger;
     getUltItem.Open;
     numitem := getUltItem.FieldByName('ULTITEM').AsInteger + 1;
end;

procedure Tdm.tbItensBeforePost(DataSet: TDataSet);
begin
  tbItensVLPRODUTO.AsCurrency := tbItensVLUNIT.AsCurrency;
end;

procedure Tdm.tbItensCalcFields(DataSet: TDataSet);
begin
     tbItensVLTOTAL.AsCurrency := tbItensVLUNIT.AsCurrency *
                                  tbItensQTVENDA.AsFloat;
end;

procedure Tdm.tbItensNewRecord(DataSet: TDataSet);
begin
     tbItensNRITEM.AsInteger  := numitem;
     tbItensNRVENDA.AsInteger := tbVendasNRVENDA.AsInteger;
     tbItensVLPRODUTO.AsCurrency := 0;
end;

procedure Tdm.tbProdutosCalcFields(DataSet: TDataSet);
begin
  if dm.dsProd.DataSet.FieldByName('QTESTOQUE').asfloat < dm.dsProd.DataSet.FieldByName('QTMINIMA').asfloat then
    begin
      dm.dsProd.DataSet.FieldByName('sugestaocompra').asfloat:=
      dm.dsProd.DataSet.FieldByName('QTMINIMA').asfloat -
      dm.dsProd.DataSet.FieldByName('QTESTOQUE').asfloat;
    end;
end;

end.
