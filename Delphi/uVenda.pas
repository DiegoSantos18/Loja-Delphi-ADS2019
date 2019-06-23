unit uVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, PngBitBtn, Data.DB;

type
  TfrmCadVenda = class(TForm)
    DBNavigator5: TDBNavigator;
    Panel1: TPanel;
    btnInserir: TPngBitBtn;
    btnEditar: TPngBitBtn;
    btnExcluir: TPngBitBtn;
    btnCancelar: TPngBitBtn;
    btnConfirmar: TPngBitBtn;
    DBText2: TDBText;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure TrataBotoes; //ctrl+shift+c
  end;

  //PRX AULA
  //DELEÇÂO EM CASCATA
  //AJUSTAR DBNAVIGATOR DOS ITENS
  //NRVENDA DA CAPA ATRIBUIDA PARA OS ITENS


var
  frmCadVenda: TfrmCadVenda;

implementation

{$R *.dfm}

uses udm;

procedure TfrmCadVenda.FormActivate(Sender: TObject);
begin
    dm.tbVendas.Active := true;
end;

procedure TfrmCadVenda.FormDeactivate(Sender: TObject);
begin
    dm.tbVendas.Active := false;
end;

procedure TfrmCadVenda.TrataBotoes;
begin
    btnInserir.Enabled := not btnInserir.Enabled;
      btnEditar.Enabled := not btnEditar.Enabled;
      btnExcluir.Enabled := not btnExcluir.Enabled;
      btnConfirmar.Enabled := not btnConfirmar.Enabled;
      btnCancelar.Enabled := not btnCancelar.Enabled;
      DBNavigator5.Enabled := not DBNavigator5.Enabled;
end;

end.
