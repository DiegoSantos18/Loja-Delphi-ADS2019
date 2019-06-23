unit uVendedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Buttons, PngBitBtn, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmCadVendedores = class(TForm)
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    Panel2: TPanel;
    btnInserir: TPngBitBtn;
    btnEditar: TPngBitBtn;
    btnCancelar: TPngBitBtn;
    btnExcluir: TPngBitBtn;
    btnConfirmar: TPngBitBtn;
    Label1: TLabel;
    dsVendedores: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBText1: TDBText;
    DBGrid1: TDBGrid;
    procedure btnInserirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure tratabotoes;
  end;

var
  frmCadVendedores: TfrmCadVendedores;

implementation

{$R *.dfm}

{ TfrmCadVendedores }

procedure TfrmCadVendedores.btnCancelarClick(Sender: TObject);
begin
     dsVendedores.DataSet.Cancel;
     TrataBotoes;
end;

procedure TfrmCadVendedores.btnConfirmarClick(Sender: TObject);
begin
     dsVendedores.DataSet.Post;
     TrataBotoes;
end;

procedure TfrmCadVendedores.btnEditarClick(Sender: TObject);
begin
     TrataBotoes;
     dsVendedores.DataSet.Edit;
end;

procedure TfrmCadVendedores.btnExcluirClick(Sender: TObject);
begin
     if MessageDlg('Tem certeza ?',mtConfirmation,
                     [mbYes,mbNo],0) = mrYes then
        dsVendedores.DataSet.Delete;
end;

procedure TfrmCadVendedores.btnInserirClick(Sender: TObject);
var proxnum : integer;
begin
     TrataBotoes;
     dsVendedores.DataSet.Last;
     proxnum := dsVendedores.DataSet.FieldByName('CDVENDEDOR').AsInteger + 1;
     dsVendedores.DataSet.Append; // Adiciona no final da tabela
     dsVendedores.DataSet.FieldByName('CDVENDEDOR').AsInteger := proxnum;
     DBEdit2.SetFocus;
end;

procedure TfrmCadVendedores.FormActivate(Sender: TObject);
begin
     dsVendedores.DataSet.Active := True;
end;

procedure TfrmCadVendedores.FormDeactivate(Sender: TObject);
begin
     dsVendedores.DataSet.Active := False;
end;

procedure TfrmCadVendedores.tratabotoes;
begin
     btnInserir.Enabled   := not btnInserir.Enabled;
     btnEditar.Enabled    := not btnEditar.Enabled;
     btnExcluir.Enabled   := not btnExcluir.Enabled;
     btnConfirmar.Enabled := not btnConfirmar.Enabled;
     btnCancelar.Enabled  := not btnCancelar.Enabled;
     DBNavigator1.Enabled := not DBNavigator1.Enabled;
end;

end.
