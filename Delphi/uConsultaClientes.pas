unit uConsultaClientes;

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
     dm.qrClientes.SQL.Text := 'SELECT a.CDCLIENTE, a.DCCLIENTE, a.ENDERECO, a.BAIRRO, c.NOME, a.TELEFONE,a.CEP FROM CLIENTES a, CIDADES c';
     dm.qrClientes.SQL.Text := dm.qrClientes.SQL.Text +
     ' WHERE c.CODIGO = a.CIDADE';
     case rgSelecao.ItemIndex of
       0 : begin
             if edbusca.Text <> '' then
             begin
                  dm.qrClientes.SQL.Text := dm.qrClientes.SQL.Text +
                         '  AND a.CDCLIENTE = :pCDCLIENTE';
                  Try // para o finally
                  Try  // para o except
                  dm.qrClientes.ParamByName('pCDCLIENTE').Value :=
                      StrToInt(edBusca.Text);
                  except
                  Showmessage('Código inválido!');
                  end;
                  finally
                  End;
             end;
             if rgOrdem.ItemIndex = 1 then
               dm.qrClientes.SQL.Text := dm.qrClientes.SQL.Text +
                         ' ORDER BY a.CDCLIENTE ';

             if rgOrdem.ItemIndex = 2 then
               dm.qrClientes.SQL.Text := dm.qrClientes.SQL.Text +
                         ' ORDER BY a.CDCLIENTE DESC';
           end;
       1 : begin
             if edbusca.Text <> '' then
             begin
                  dm.qrClientes.SQL.Text := dm.qrClientes.SQL.Text +
                         '  AND a.DCCLIENTE CONTAINING :pDCCLIENTE';
                  dm.qrClientes.ParamByName('pDCCLIENTE').Value :=
                      edBusca.Text;
             end;
             if rgOrdem.ItemIndex = 1 then
               dm.qrClientes.SQL.Text := dm.qrClientes.SQL.Text +
                         ' ORDER BY a.DCCLIENTE ';

             if rgOrdem.ItemIndex = 2 then
               dm.qrClientes.SQL.Text := dm.qrClientes.SQL.Text +
                         ' ORDER BY a.DCCLIENTE DESC';
           end;
       2 : begin
             if edbusca.Text <> '' then
                begin
                  dm.qrClientes.SQL.Text := dm.qrClientes.SQL.Text +
                         '  AND c.NOME CONTAINING :pCID';
                  dm.qrClientes.ParamByName('pCID').Value :=
                      edBusca.Text;
                end;
             if rgOrdem.ItemIndex = 1 then
               dm.qrClientes.SQL.Text := dm.qrClientes.SQL.Text +
                         ' ORDER BY c.NOME ';

             if rgOrdem.ItemIndex = 2 then
               dm.qrClientes.SQL.Text := dm.qrClientes.SQL.Text +
                         ' ORDER BY c.NOME DESC';
           end;
       3 : begin
             if edbusca.Text <> '' then
                begin
                  dm.qrClientes.SQL.Text := dm.qrClientes.SQL.Text +
                         ' AND c.UF CONTAINING :pUf';
                  dm.qrClientes.ParamByName('pUf').Value :=
                      edBusca.Text;
                end;
             if rgOrdem.ItemIndex = 1 then
               dm.qrClientes.SQL.Text := dm.qrClientes.SQL.Text +
                         ' ORDER BY c.UF ';

             if rgOrdem.ItemIndex = 2 then
               dm.qrClientes.SQL.Text := dm.qrClientes.SQL.Text +
                         ' ORDER BY c.UF DESC';
           end;
     end;

     DM.qrClientes.Open;
     if DM.qrClientes.IsEmpty then
       MessageDlg('Consulta vazia !',mtWarning, [mbOk], 0);

end;

end.
