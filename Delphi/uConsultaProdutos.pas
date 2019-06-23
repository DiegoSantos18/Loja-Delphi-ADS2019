unit uConsultaProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmLocProdutos = class(TForm)
    GroupBox1: TGroupBox;
    rgSelecao: TRadioGroup;
    rgOrdem: TRadioGroup;
    edBusca: TEdit;
    btLocalizar: TButton;
    DBGrid1: TDBGrid;
    cbOpProduto: TComboBox;
    procedure btLocalizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLocProdutos: TfrmLocProdutos;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmLocProdutos.btLocalizarClick(Sender: TObject);
begin
  dm.qrProdutos.Close;
  dm.qrProdutos.SQL.Text := 'SELECT * FROM PRODUTOS d';


          case rgSelecao.ItemIndex of
             0 : begin
                   if edbusca.Text <> '' then
                   begin
                     //consulta todos os produtos
                     if cbOpProduto.ItemIndex = 0 then
                        begin
                          dm.qrProdutos.SQL.Text := dm.qrProdutos.SQL.Text +
                               '  WHERE d.CDPRODUTO = :pCDPRODUTO ';
                          Try // para o finally
                  Try  // para o except
                  dm.qrProdutos.ParamByName('pCDPRODUTO').Value :=
                            StrToInt(edBusca.Text);
                  except
                  Showmessage('Código inválido!');
                  end;
                  finally
                  End;
                  end;
                   end;
                     //consulta produtos por necessidade de compra
                     if cbOpProduto.ItemIndex = 1 then
                        begin
                          dm.qrProdutos.SQL.Text := dm.qrProdutos.SQL.Text +
                               '  WHERE d.QTESTOQUE < d.QTMINIMA ';
                        end;

                   if rgOrdem.ItemIndex = 1 then
                     dm.qrProdutos.SQL.Text := dm.qrProdutos.SQL.Text +
                               ' ORDER BY d.CDPRODUTO ';

                   if rgOrdem.ItemIndex = 2 then
                     dm.qrProdutos.SQL.Text := dm.qrProdutos.SQL.Text +
                               ' ORDER BY d.CDPRODUTO DESC';
                 end;
             1 : begin
                   if edbusca.Text <> '' then
                    begin
                    //consulta todos os produtos
                     if cbOpProduto.ItemIndex = 0 then
                        begin
                          dm.qrProdutos.SQL.Text := dm.qrProdutos.SQL.Text +
                               '  WHERE d.DCPRODUTO = :pDCPRODUTO';
                          dm.qrProdutos.ParamByName('pDCPRODUTO').Value := edBusca.Text;
                        end;
                    end;
                     //consulta produtos por necessidade de compra
                     if cbOpProduto.ItemIndex = 1 then
                        begin
                          dm.qrProdutos.SQL.Text := dm.qrProdutos.SQL.Text +
                               '  WHERE d.QTESTOQUE < d.QTMINIMA ';
                        end;


                     if rgOrdem.ItemIndex = 1 then
                     dm.qrProdutos.SQL.Text := dm.qrProdutos.SQL.Text +
                               ' ORDER BY d.DCPRODUTO ';

                   if rgOrdem.ItemIndex = 2 then
                     dm.qrProdutos.SQL.Text := dm.qrProdutos.SQL.Text +
                               ' ORDER BY d.DCPRODUTO DESC';

                 end;
          end;

     DM.qrProdutos.Open;
     if DM.qrProdutos.IsEmpty then
       MessageDlg('Consulta vazia !',mtWarning, [mbOk], 0);

end;

end.
