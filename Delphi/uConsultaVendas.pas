unit uConsultaVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrmLocVendas = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    rgSelecao: TRadioGroup;
    rgOrdem: TRadioGroup;
    edBusca: TEdit;
    btLocalizar: TButton;
    procedure btLocalizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLocVendas: TfrmLocVendas;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmLocVendas.btLocalizarClick(Sender: TObject);
begin
  dm.qrVendas.Close;
     dm.qrVendas.SQL.Text := 'SELECT a.NRVENDA, a.DTVENDA, c.DCCLIENTE, v.DCVENDEDOR FROM VENDAS a, CLIENTES c, VENDEDORES v';
     dm.qrVendas.SQL.Text := dm.qrVendas.SQL.Text +
     ' WHERE a.CDCLIENTE = c.CDCLIENTE AND a.CDVENDEDOR = v.CDVENDEDOR';
     case rgSelecao.ItemIndex of
       0 : begin
             if edbusca.Text <> '' then
             begin
                  dm.qrVendas.SQL.Text := dm.qrVendas.SQL.Text +
                         '  AND a.NRVENDA = :pNRVENDA';
                  Try // para o finally
                  Try  // para o except
                  dm.qrVendas.ParamByName('pNRVENDA').Value :=
                      StrToInt(edBusca.Text);
                  except
                  Showmessage('Código inválido!');
                  end;
                  finally
                  End;
             end;
             if rgOrdem.ItemIndex = 1 then
               dm.qrVendas.SQL.Text := dm.qrVendas.SQL.Text +
                         ' ORDER BY a.NRVENDA ';

             if rgOrdem.ItemIndex = 2 then
               dm.qrVendas.SQL.Text := dm.qrVendas.SQL.Text +
                         ' ORDER BY a.NRVENDA DESC';
           end;
       1 : begin
             if edbusca.Text <> '' then
             begin
                  dm.qrVendas.SQL.Text := dm.qrVendas.SQL.Text +
                         '  AND a.DTVENDA CONTAINING :pDTVENDA';
                  dm.qrVendas.ParamByName('pDTVENDA').Value :=
                      edBusca.Text;
             end;
             if rgOrdem.ItemIndex = 1 then
               dm.qrVendas.SQL.Text := dm.qrVendas.SQL.Text +
                         ' ORDER BY a.DTVENDA ';

             if rgOrdem.ItemIndex = 2 then
               dm.qrVendas.SQL.Text := dm.qrVendas.SQL.Text +
                         ' ORDER BY a.DTVENDA DESC';
           end;
       2 : begin
             if edbusca.Text <> '' then
                begin
                  dm.qrVendas.SQL.Text := dm.qrVendas.SQL.Text +
                         '  AND c.DCCLIENTE CONTAINING :pDCCLIENTE';
                  dm.qrVendas.ParamByName('pDCCLIENTE').Value :=
                      edBusca.Text;
                end;
             if rgOrdem.ItemIndex = 1 then
               dm.qrVendas.SQL.Text := dm.qrVendas.SQL.Text +
                         ' ORDER BY c.DCCLIENTE ';

             if rgOrdem.ItemIndex = 2 then
               dm.qrVendas.SQL.Text := dm.qrVendas.SQL.Text +
                         ' ORDER BY c.DCCLIENTE DESC';
           end;
       3 : begin
             if edbusca.Text <> '' then
                begin
                  dm.qrVendas.SQL.Text := dm.qrVendas.SQL.Text +
                         ' AND v.DCVENDEDOR CONTAINING :pDCVENDEDOR';
                  dm.qrVendas.ParamByName('pDCVENDEDOR').Value :=
                      edBusca.Text;
                end;
             if rgOrdem.ItemIndex = 1 then
               dm.qrVendas.SQL.Text := dm.qrVendas.SQL.Text +
                         ' ORDER BY v.DCVENDEDOR ';

             if rgOrdem.ItemIndex = 2 then
               dm.qrVendas.SQL.Text := dm.qrVendas.SQL.Text +
                         ' ORDER BY v.DCVENDEDOR DESC';
           end;
     end;

     DM.qrVendas.Open;
     if DM.qrVendas.IsEmpty then
       MessageDlg('Consulta vazia !',mtWarning, [mbOk], 0);
end;

end.
