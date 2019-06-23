unit uCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.Buttons, Vcl.ExtCtrls, PngBitBtn;

type
  TfrmCadCli = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    dsClientes: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBText1: TDBText;
    btnInserir: TPngBitBtn;
    btnEditar: TPngBitBtn;
    btnCancelar: TPngBitBtn;
    btnExcluir: TPngBitBtn;
    btnConfirmar: TPngBitBtn;
    Label5: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label8: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure PngBitBtn2Click(Sender: TObject);
    procedure PngBitBtn4Click(Sender: TObject);
    procedure PngBitBtn3Click(Sender: TObject);
    procedure PngBitBtn5Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure TrataBotoes;  //ctrl + shift + C
  end;

var
  frmCadCli: TfrmCadCli;

implementation

{$R *.dfm}

uses udm;

procedure TfrmCadCli.btnCancelarClick(Sender: TObject);
begin
     dsClientes.DataSet.Cancel;
     TrataBotoes;
end;

procedure TfrmCadCli.btnConfirmarClick(Sender: TObject);
begin
     dsClientes.DataSet.Post;
     TrataBotoes;
end;

procedure TfrmCadCli.btnEditarClick(Sender: TObject);
begin
     TrataBotoes;
     dsClientes.DataSet.Edit;
end;

procedure TfrmCadCli.btnExcluirClick(Sender: TObject);
begin
     if MessageDlg('Tem certeza ?',mtConfirmation,
                     [mbYes,mbNo],0) = mrYes then
        dsClientes.DataSet.Delete;
end;

procedure TfrmCadCli.btnInserirClick(Sender: TObject);
var proxnum : integer;
begin
     TrataBotoes;
     dsClientes.DataSet.Last;
     proxnum := dsClientes.DataSet.FieldByName('CDCLIENTE').AsInteger + 1;
     dsClientes.DataSet.Append; // Adiciona no final da tabela
     dsClientes.DataSet.FieldByName('CDCLIENTE').AsInteger := proxnum;
     DBEdit2.SetFocus;
end;

procedure TfrmCadCli.DBLookupComboBox2Click(Sender: TObject);
begin
  dm.qrCidade.Close;
     dm.qrCidade.SQL.Text := 'SELECT CODIGO,NOME FROM CIDADES';
     dm.qrCidade.SQL.Text := dm.qrCidade.SQL.Text +
     '  WHERE uf = :pUf';
     dm.qrCidade.ParamByName('pUf').Value :=(DBLookupComboBox2.Text);
     dm.qrCidade.SQL.Text := dm.qrCidade.SQL.Text +
                         ' ORDER BY NOME ';

     dm.qrCidade.Open;
     if dm.qrCidade.IsEmpty then
       MessageDlg('Consulta vazia para cidade !',mtWarning, [mbOk], 0);
end;

procedure TfrmCadCli.FormActivate(Sender: TObject);
begin
      dm.tbClientes.Active := True;
end;

procedure TfrmCadCli.FormDeactivate(Sender: TObject);
begin
     dm.tbClientes.Active := False;
end;

procedure TfrmCadCli.PngBitBtn1Click(Sender: TObject);
var proxnum : integer;
begin
     TrataBotoes;
     dsClientes.DataSet.Last;
     proxnum := dsClientes.DataSet.FieldByName('CDCLIENTE').AsInteger + 1;
     dsClientes.DataSet.Append; // Adiciona no final da tabela
     dsClientes.DataSet.FieldByName('CDCLIENTE').AsInteger := proxnum;
     DBEdit2.SetFocus;
end;

procedure TfrmCadCli.PngBitBtn2Click(Sender: TObject);
begin
     TrataBotoes;
     dsClientes.DataSet.Edit;
end;

procedure TfrmCadCli.PngBitBtn3Click(Sender: TObject);
begin
     dsClientes.DataSet.Cancel;
     TrataBotoes;
end;

procedure TfrmCadCli.PngBitBtn4Click(Sender: TObject);
begin
     if MessageDlg('Tem certeza ?',mtConfirmation,
                     [mbYes,mbNo],0) = mrYes then
        dsClientes.DataSet.Delete;
end;

procedure TfrmCadCli.PngBitBtn5Click(Sender: TObject);
begin
     dsClientes.DataSet.Post;
     TrataBotoes;
end;

procedure TfrmCadCli.TrataBotoes;
begin
     btnInserir.Enabled   := not btnInserir.Enabled;
     btnEditar.Enabled    := not btnEditar.Enabled;
     btnExcluir.Enabled   := not btnExcluir.Enabled;
     btnConfirmar.Enabled := not btnConfirmar.Enabled;
     btnCancelar.Enabled  := not btnCancelar.Enabled;
     DBNavigator1.Enabled := not DBNavigator1.Enabled;
end;

end.
