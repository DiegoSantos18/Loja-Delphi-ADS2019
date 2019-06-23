unit uRelVendedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet, Vcl.StdCtrls,
  frxExportBaseDialog, frxExportPDF;

type
  TfrmRelVendedores = class(TForm)
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
  frmRelVendedores: TfrmRelVendedores;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmRelVendedores.btnImprimirClick(Sender: TObject);
begin
  dm.dsVendedor.DataSet.Open;
  frxReport1.ShowReport();
end;

end.
