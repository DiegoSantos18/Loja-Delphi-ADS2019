unit uProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn,
  Vcl.ExtCtrls, Vcl.DBCtrls, Data.DB;

type
  TfrmCadProd = class(TForm)
    DBNavigator6: TDBNavigator;
    Panel1: TPanel;
    btnInserir: TPngBitBtn;
    btnEditar: TPngBitBtn;
    btnExcluir: TPngBitBtn;
    btnCancelar: TPngBitBtn;
    btnConfirmar: TPngBitBtn;
    DBText2: TDBText;
    DBLookupCBFornecedor: TDBLookupComboBox;
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure TrataBotoes; //ctrl+shift+c
  end;

var
  frmCadProd: TfrmCadProd;

implementation

{$R *.dfm}

uses udm;

procedure TfrmCadProd.FormActivate(Sender: TObject);
begin
    dsProdutos.DataSet.Active := true;
    dm.dsFornec.DataSet.Active := true;
end;

procedure TfrmCadProd.FormDeactivate(Sender: TObject);
begin
    dsProdutos.DataSet.Active := false;
    dm.dsFornec.DataSet.Active := false;
end;

procedure TfrmCadProd.TrataBotoes;
begin
    btnInserir.Enabled := not btnInserir.Enabled;
      btnEditar.Enabled := not btnEditar.Enabled;
      btnExcluir.Enabled := not btnExcluir.Enabled;
      btnConfirmar.Enabled := not btnConfirmar.Enabled;
      btnCancelar.Enabled := not btnCancelar.Enabled;
      DBNavigator6.Enabled := not DBNavigator6.Enabled;
end;

end.
