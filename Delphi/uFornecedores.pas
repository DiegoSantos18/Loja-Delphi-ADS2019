unit uFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask,
  Data.DB, Vcl.Buttons, PngBitBtn, Vcl.ExtCtrls;

type
  TfrmCadFornecedores = class(TForm)
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    Panel2: TPanel;
    btnInserir: TPngBitBtn;
    btnEditar: TPngBitBtn;
    btnCancelar: TPngBitBtn;
    btnExcluir: TPngBitBtn;
    btnConfirmar: TPngBitBtn;
    Label1: TLabel;
    dsFornecedores: TDataSource;
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
    DBText1: TDBText;
    Label5: TLabel;
    Label8: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    procedure btnInserirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure TrataBotoes;
  end;

var
  frmCadFornecedores: TfrmCadFornecedores;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmCadFornecedores.btnCancelarClick(Sender: TObject);
begin
     dsFornecedores.DataSet.Cancel;
     TrataBotoes;
end;

procedure TfrmCadFornecedores.btnConfirmarClick(Sender: TObject);
begin
     dsFornecedores.DataSet.Post;
     TrataBotoes;
end;

procedure TfrmCadFornecedores.btnEditarClick(Sender: TObject);
begin
     TrataBotoes;
     dsFornecedores.DataSet.Edit;
end;

procedure TfrmCadFornecedores.btnExcluirClick(Sender: TObject);
begin
      if MessageDlg('Tem certeza ?',mtConfirmation,
                     [mbYes,mbNo],0) = mrYes then
        dsFornecedores.DataSet.Delete;
end;

procedure TfrmCadFornecedores.btnInserirClick(Sender: TObject);
var proxnum : integer;
begin
     TrataBotoes;
     dsFornecedores.DataSet.Last;
     proxnum := dsFornecedores.DataSet.FieldByName('CDFORNECEDOR').AsInteger + 1;
     dsFornecedores.DataSet.Append; // Adiciona no final da tabela
     dsFornecedores.DataSet.FieldByName('CDFORNECEDOR').AsInteger := proxnum;
     DBEdit2.SetFocus;
end;

procedure TfrmCadFornecedores.DBLookupComboBox2Click(Sender: TObject);
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

procedure TfrmCadFornecedores.FormActivate(Sender: TObject);
begin
     dsFornecedores.DataSet.Active  := True;
end;

procedure TfrmCadFornecedores.FormDeactivate(Sender: TObject);
begin
     dsFornecedores.DataSet.Active  := False;
end;

procedure TfrmCadFornecedores.Tratabotoes;
begin
     btnInserir.Enabled   := not btnInserir.Enabled;
     btnEditar.Enabled    := not btnEditar.Enabled;
     btnExcluir.Enabled   := not btnExcluir.Enabled;
     btnConfirmar.Enabled := not btnConfirmar.Enabled;
     btnCancelar.Enabled  := not btnCancelar.Enabled;
     DBNavigator1.Enabled := not DBNavigator1.Enabled;
end;

end.
