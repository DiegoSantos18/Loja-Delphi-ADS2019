unit uConsultaCli;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmLocClientes = class(TForm)
    GroupBox1: TGroupBox;
    rgSelecao: TRadioGroup;
    rgOrdem: TRadioGroup;
    edBusca: TEdit;
    btLocalizar: TButton;
    DBGrid1: TDBGrid;
    procedure btLocalizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLocClientes: TfrmLocClientes;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmLocClientes.btLocalizarClick(Sender: TObject);
begin
    dm.qrClientes.Close;
    dm.qrClientes.SQL.Text := 'SELECT * FROM CLIENTES';
    case rgSelecao.ItemIndex of
      0: begin
          if edBusca.Text <> '' then
             begin
               dm.qrClientes.SQL.Text := dm.qrClientes.SQL.Text +
                  ' WHERE CDCLIENTE = :pCDCLIENTE';
               dm.qrClientes.ParamByName('pCDCLIENTE').Value :=
                  StrToInt(edBusca.Text);
             end;
         if rgOrdem.ItemIndex = 1 then
             dm.qrClientes.SQL.Text := dm.qrClientes.SQL.Text +
                  ' ORDER BY CDCLIENTE ';

         if rgOrdem.ItemIndex = 2 then
             dm.qrClientes.SQL.Text := dm.qrClientes.SQL.Text +
                  ' ORDER BY CDCLIENTE DESC';
         end;
     1: begin
          if edBusca.Text <> '' then
             begin
               dm.qrClientes.SQL.Text := dm.qrClientes.SQL.Text +
                  ' WHERE DCCLIENTE = :pDCCLIENTE';
               dm.qrClientes.ParamByName('pDCCLIENTE').Value :=
                  StrToInt(edBusca.Text);
             end;
         if rgOrdem.ItemIndex = 1 then
             dm.qrClientes.SQL.Text := dm.qrClientes.SQL.Text +
                  ' ORDER BY DCCLIENTE ';

         if rgOrdem.ItemIndex = 2 then
             dm.qrClientes.SQL.Text := dm.qrClientes.SQL.Text +
                  ' ORDER BY DCCLIENTE DESC';

        end;
    end;
        DM.qrClientes.Open;
        if DM.qrClientes.IsEmpty then
           MessageDlg('Consulta Vazia !',mtWarning, [mbOk],0)

end;



end.
