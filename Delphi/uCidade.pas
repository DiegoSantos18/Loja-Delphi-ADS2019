unit uCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask,
  Data.DB, Vcl.Buttons, PngBitBtn, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfrmCadCidade = class(TForm)
    panel: TPanel;
    Panel2: TPanel;
    btnInserir: TPngBitBtn;
    btnEditar: TPngBitBtn;
    btnCancelar: TPngBitBtn;
    btnExcluir: TPngBitBtn;
    btnConfirmar: TPngBitBtn;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    dsCid: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBText1: TDBText;
    procedure btnInserirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure TrataBotoes;  //ctrl + shift + C
  end;

var
  frmCadCidade: TfrmCadCidade;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmCadCidade.btnCancelarClick(Sender: TObject);
begin
     dsCid.DataSet.Cancel;
     TrataBotoes;
end;

procedure TfrmCadCidade.btnConfirmarClick(Sender: TObject);
begin
     dsCid.DataSet.Post;
     TrataBotoes;
end;

procedure TfrmCadCidade.btnEditarClick(Sender: TObject);
begin
     TrataBotoes;
     dsCid.DataSet.Edit;
end;

procedure TfrmCadCidade.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Tem certeza ?',mtConfirmation,
                     [mbYes,mbNo],0) = mrYes then
        dsCid.DataSet.Delete;
end;

procedure TfrmCadCidade.btnInserirClick(Sender: TObject);
var proxnum : integer;
begin
     TrataBotoes;
     dsCid.DataSet.Last;
     proxnum := dsCid.DataSet.FieldByName('CODIGO').AsInteger + 1;
     dsCid.DataSet.Append; // Adiciona no final da tabela
     dsCid.DataSet.FieldByName('CODIGO').AsInteger := proxnum;
     DBEdit2.SetFocus;
end;

procedure TfrmCadCidade.TrataBotoes;
begin
     btnInserir.Enabled   := not btnInserir.Enabled;
     btnEditar.Enabled    := not btnEditar.Enabled;
     btnExcluir.Enabled   := not btnExcluir.Enabled;
     btnConfirmar.Enabled := not btnConfirmar.Enabled;
     btnCancelar.Enabled  := not btnCancelar.Enabled;
     DBNavigator1.Enabled := not DBNavigator1.Enabled;
end;

end.
