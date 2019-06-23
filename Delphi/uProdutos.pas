unit uProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Buttons, PngBitBtn, Vcl.ExtCtrls;

type
  TfrmCadProdutos = class(TForm)
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    Panel2: TPanel;
    btnInserir: TPngBitBtn;
    btnEditar: TPngBitBtn;
    btnCancelar: TPngBitBtn;
    btnExcluir: TPngBitBtn;
    btnConfirmar: TPngBitBtn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    dsProdutos: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBText1: TDBText;
    Label7: TLabel;
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
    procedure TrataBotoes;
  end;

var
  frmCadProdutos: TfrmCadProdutos;

implementation

{$R *.dfm}

uses uDM;

{ TfrmCadProdutos }

procedure TfrmCadProdutos.btnCancelarClick(Sender: TObject);
begin
     dsProdutos.DataSet.Cancel;
     TrataBotoes;
end;

procedure TfrmCadProdutos.btnConfirmarClick(Sender: TObject);
begin
     dsProdutos.DataSet.Post;
     TrataBotoes;
end;

procedure TfrmCadProdutos.btnEditarClick(Sender: TObject);
begin
     TrataBotoes;
     dsProdutos.DataSet.Edit;
end;

procedure TfrmCadProdutos.btnExcluirClick(Sender: TObject);
begin
     if MessageDlg('Tem certeza ?',mtConfirmation,
                     [mbYes,mbNo],0) = mrYes then
        dsProdutos.DataSet.Delete;
end;

procedure TfrmCadProdutos.btnInserirClick(Sender: TObject);
var proxnum : integer;
begin
     TrataBotoes;
     dsProdutos.DataSet.Last;
     proxnum := dsProdutos.DataSet.FieldByName('CDPRODUTO').AsInteger + 1;
     dsProdutos.DataSet.Append; // Adiciona no final da tabela
     dsProdutos.DataSet.FieldByName('CDPRODUTO').AsInteger := proxnum;
     DBEdit2.SetFocus;
end;

procedure TfrmCadProdutos.FormActivate(Sender: TObject);
begin
     dsProdutos.DataSet.Active := True;
     dm.dsFornec.DataSet.Active := True;
end;

procedure TfrmCadProdutos.FormDeactivate(Sender: TObject);
begin
     dsProdutos.DataSet.Active := False;
     dm.dsFornec.DataSet.Active := False;
end;

procedure TfrmCadProdutos.TrataBotoes;
begin
     btnInserir.Enabled   := not btnInserir.Enabled;
     btnEditar.Enabled    := not btnEditar.Enabled;
     btnExcluir.Enabled   := not btnExcluir.Enabled;
     btnConfirmar.Enabled := not btnConfirmar.Enabled;
     btnCancelar.Enabled  := not btnCancelar.Enabled;
     DBNavigator1.Enabled := not DBNavigator1.Enabled;end;

end.
