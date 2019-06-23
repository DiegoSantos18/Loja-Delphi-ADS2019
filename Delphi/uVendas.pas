unit uVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Mask, Vcl.Buttons, PngBitBtn, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Vcl.ComCtrls;

type
  TfrmCadVendas = class(TForm)
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    btnInserir: TPngBitBtn;
    btnEditar: TPngBitBtn;
    btnCancelar: TPngBitBtn;
    btnExcluir: TPngBitBtn;
    btnConfirmar: TPngBitBtn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    dsVendas: TDataSource;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label3: TLabel;
    Label4: TLabel;
    DBNavigator2: TDBNavigator;
    DBEdit2: TDBEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure TRatabotoes;
  end;

// PRX AULA
// DELECAO EM CASCATA



var
  frmCadVendas: TfrmCadVendas;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmCadVendas.btnCancelarClick(Sender: TObject);
begin
     TrataBotoes;
     dsVendas.DataSet.Cancel;
end;

procedure TfrmCadVendas.btnConfirmarClick(Sender: TObject);
begin
     TrataBotoes;
     dsVendas.DataSet.Post;
end;

procedure TfrmCadVendas.btnEditarClick(Sender: TObject);
begin
     TrataBotoes;
     dsVendas.DataSet.Edit;
end;

procedure TfrmCadVendas.btnExcluirClick(Sender: TObject);
begin
     if MessageDlg('Tem certeza ?',mtConfirmation,
                     [mbYes,mbNo],0) = mrYes then
        dsVendas.DataSet.Delete;  // Deletar em cascata - PRX AULA
end;

procedure TfrmCadVendas.btnInserirClick(Sender: TObject);
var proxnum : integer;
begin
     TrataBotoes;
     dsVendas.DataSet.Last;
     proxnum := dsVendas.DataSet.FieldByName('NRVENDA').AsInteger + 1;
     dsVendas.DataSet.Append; // Adiciona no final da tabela
     dsVendas.DataSet.FieldByName('NRVENDA').AsInteger := proxnum;

end;

procedure TfrmCadVendas.FormActivate(Sender: TObject);
begin
     dsVendas.DataSet.Active := True;
     With dm do
     begin
          dsCli.DataSet.Active      := True;
          dsVendedor.DataSet.Active := True;
          dsItens.DataSet.Active    := True;
     end;
end;

procedure TfrmCadVendas.FormDeactivate(Sender: TObject);
begin
     dsVendas.DataSet.Active        := False;
     With dm do
     begin
          dsCli.DataSet.Active      := False;
          dsVendedor.DataSet.Active := False;
          dsItens.DataSet.Active    := False;
     end;
end;

procedure TfrmCadVendas.TRatabotoes;
begin
     btnInserir.Enabled   := not btnInserir.Enabled;
     btnEditar.Enabled    := not btnEditar.Enabled;
     btnExcluir.Enabled   := not btnExcluir.Enabled;
     btnConfirmar.Enabled := not btnConfirmar.Enabled;
     btnCancelar.Enabled  := not btnCancelar.Enabled;
     DBNavigator1.Enabled := not DBNavigator1.Enabled;

     DBNavigator2.Enabled := not DBNavigator2.Enabled;
end;

end.
