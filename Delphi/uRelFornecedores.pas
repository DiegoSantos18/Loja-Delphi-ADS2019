unit uRelFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxExportBaseDialog,
  frxExportPDF, frxDBSet, Vcl.StdCtrls;

type
  TfrmRelFornecedores = class(TForm)
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
  frmRelFornecedores: TfrmRelFornecedores;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmRelFornecedores.btnImprimirClick(Sender: TObject);
begin
  dm.dsFornec.DataSet.Open;
  frxReport1.ShowReport();
end;

end.
