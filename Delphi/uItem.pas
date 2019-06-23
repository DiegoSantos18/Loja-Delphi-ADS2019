unit uItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, PngBitBtn;

type
  TfrmCadItem = class(TForm)
    DBNavigator4: TDBNavigator;
    Panel1: TPanel;
    btnInserir: TPngBitBtn;
    btnEditar: TPngBitBtn;
    btnExcluir: TPngBitBtn;
    btnCancelar: TPngBitBtn;
    btnConfirmar: TPngBitBtn;
    DBText2: TDBText;
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure TrataBotoes; //ctrl+shift+c
  end;

var
  frmCadItem: TfrmCadItem;

implementation

{$R *.dfm}

uses udm;

procedure TfrmCadItem.FormActivate(Sender: TObject);
begin
  dm.tbItens.Active := true;
end;

procedure TfrmCadItem.FormDeactivate(Sender: TObject);
begin
    dm.tbItens.Active := false;
end;

procedure TfrmCadItem.TrataBotoes;
begin
    btnInserir.Enabled := not btnInserir.Enabled;
      btnEditar.Enabled := not btnEditar.Enabled;
      btnExcluir.Enabled := not btnExcluir.Enabled;
      btnConfirmar.Enabled := not btnConfirmar.Enabled;
      btnCancelar.Enabled := not btnCancelar.Enabled;
      DBNavigator4.Enabled := not DBNavigator4.Enabled;
end;

end.
