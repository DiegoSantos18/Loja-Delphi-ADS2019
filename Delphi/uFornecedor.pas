unit UFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.DBCtrls, PngBitBtn, Vcl.Mask, Data.DB;

type
  TfrmCadFornec = class(TForm)
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    Panel2: TPanel;
    btnInserir: TPngBitBtn;
    btnEditar: TPngBitBtn;
    btnExcluir: TPngBitBtn;
    btnCancelar: TPngBitBtn;
    btnConfirmar: TPngBitBtn;
    dsFornecedores: TDataSource;
    cdFornecedor: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
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
    procedure TrataBotoes; //Ctrl + Shift + C
  end;

var
  frmCadFornec: TfrmCadFornec;

implementation

{$R *.dfm}

uses udm;


procedure TfrmCadFornec.btnCancelarClick(Sender: TObject);
begin
    dsFornecedores.DataSet.Cancel;
    TrataBotoes;
end;

procedure TfrmCadFornec.btnConfirmarClick(Sender: TObject);
begin
    dsFornecedores.DataSet.Post;
    TrataBotoes;
end;

procedure TfrmCadFornec.btnEditarClick(Sender: TObject);
begin
     TrataBotoes;
     dsFornecedores.DataSet.Edit;
end;

procedure TfrmCadFornec.btnExcluirClick(Sender: TObject);
begin
    if MessageDlg('Tem certeza ?', mtConfirmation,
                  [mbYes,mbNO], 0) = mrYes then
    dsFornecedores.DataSet.Delete;
end;

procedure TfrmCadFornec.btnInserirClick(Sender: TObject);
var proxNum : integer;
begin
    TrataBotoes;
    dsFornecedores.DataSet.Last;
    proxNum := dsFornecedores.DataSet.FieldByName('CDFORNECEDOR').AsInteger + 1;
    dsFornecedores.DataSet.Append; //adiciona no final da tabela
    dsFornecedores.DataSet.FieldByName('CDFORNECEDOR').AsInteger := proxNum;
    DBEdit2.setFocus;
end;

procedure TfrmCadFornec.FormActivate(Sender: TObject);
begin
     dm.tbFornecedor.Active := true;
end;

procedure TfrmCadFornec.FormDeactivate(Sender: TObject);
begin
      dm.tbFornecedor.Active := false;
end;

procedure TfrmCadFornec.TrataBotoes;
begin
     btnInserir.Enabled := not btnInserir.Enabled;
     btnEditar.Enabled := not btnEditar.Enabled;
     btnExcluir.Enabled := not btnExcluir.Enabled;
     btnCancelar.Enabled := not btnCancelar.Enabled;
     btnConfirmar.Enabled := not btnConfirmar.Enabled;
     DBNavigator1.Enabled := not DBNavigator1.Enabled;
end;

end.
