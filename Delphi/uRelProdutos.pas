unit uRelProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxExportBaseDialog,
  frxExportPDF, frxDBSet, Vcl.StdCtrls;

type
  TfrmRelProdutos = class(TForm)
    btnImprimir: TButton;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelProdutos: TfrmRelProdutos;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmRelProdutos.btnImprimirClick(Sender: TObject);
begin
  dm.dsProd.DataSet.Open;
  frxReport1.ShowReport();
end;

end.
