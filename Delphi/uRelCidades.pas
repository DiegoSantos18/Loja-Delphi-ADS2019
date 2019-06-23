unit uRelCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxExportBaseDialog,
  frxExportPDF, frxDBSet, Vcl.StdCtrls;

type
  TfrmRelCidades = class(TForm)
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
  frmRelCidades: TfrmRelCidades;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmRelCidades.btnImprimirClick(Sender: TObject);
begin
  dm.dsCidades.DataSet.Open;
  frxReport1.ShowReport();
end;

end.
