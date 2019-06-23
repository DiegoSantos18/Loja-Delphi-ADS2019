unit uConsultaFornec;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmLocFornecedores = class(TForm)
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
  frmLocFornecedores: TfrmLocFornecedores;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmLocFornecedores.btLocalizarClick(Sender: TObject);
begin
     dm.qrFornecedores.Close;
     dm.qrFornecedores.SQL.Text := 'SELECT f.CDFORNECEDOR, f.DCFORNECEDOR, f.ENDERECO, f.BAIRRO, c.NOME,c.UF,f.TELEFONE, f.CEP FROM FORNECEDORES f, CIDADES c';
     dm.qrFornecedores.SQL.Text := dm.qrFornecedores.SQL.Text +
                         ' WHERE c.CODIGO = f.cidade';
     case rgSelecao.ItemIndex of
       0 : begin
             if edbusca.Text <> '' then
             begin
                  dm.qrFornecedores.SQL.Text := dm.qrFornecedores.SQL.Text +
                         ' AND  f.CDFORNECEDOR = :pCDFORNECEDOR';
                  Try // para o finally
                  Try  // para o except
                  dm.qrFornecedores.ParamByName('pCDFORNECEDOR').Value :=
                      StrToInt(edBusca.Text);
                  except
                  Showmessage('Código inválido!');
                  end;
                  finally
                  End;
             end;
             if rgOrdem.ItemIndex = 1 then
               dm.qrFornecedores.SQL.Text := dm.qrFornecedores.SQL.Text +
                         ' ORDER BY f.CDFORNECEDOR ';

             if rgOrdem.ItemIndex = 2 then
               dm.qrFornecedores.SQL.Text := dm.qrFornecedores.SQL.Text +
                         ' ORDER BY f.CDFORNECEDOR DESC';
           end;
       1 : begin
             if edbusca.Text <> '' then
             begin
                  dm.qrFornecedores.SQL.Text := dm.qrFornecedores.SQL.Text +
                         ' AND f.DCFORNECEDOR CONTAINING :pDCFORNECEDOR';
                  dm.qrFornecedores.ParamByName('pDCFORNECEDOR').Value :=
                      edBusca.Text;
             end;
             if rgOrdem.ItemIndex = 1 then
               dm.qrFornecedores.SQL.Text := dm.qrFornecedores.SQL.Text +
                         ' ORDER BY f.DCFORNECEDOR ';

             if rgOrdem.ItemIndex = 2 then
               dm.qrFornecedores.SQL.Text := dm.qrFornecedores.SQL.Text +
                         ' ORDER BY f.DCFORNECEDOR DESC';
           end;
       2 : begin
             if edbusca.Text <> '' then
                begin
                  dm.qrFornecedores.SQL.Text := dm.qrFornecedores.SQL.Text +
                         ' AND c.NOME CONTAINING :pCID';
                  dm.qrFornecedores.ParamByName('pCID').Value := edBusca.Text;
                end;
             if rgOrdem.ItemIndex = 1 then
               dm.qrFornecedores.SQL.Text := dm.qrFornecedores.SQL.Text +
                         ' ORDER BY c.NOME ';

             if rgOrdem.ItemIndex = 2 then
               dm.qrFornecedores.SQL.Text := dm.qrFornecedores.SQL.Text +
                         ' ORDER BY c.NOME DESC';
           end;
       3 : begin
             if edbusca.Text <> '' then
                begin
                  dm.qrFornecedores.SQL.Text := dm.qrFornecedores.SQL.Text +
                         ' AND c.UF CONTAINING :pUf';
                  dm.qrFornecedores.ParamByName('pUf').Value :=
                      edBusca.Text;
                end;
             if rgOrdem.ItemIndex = 1 then
               dm.qrFornecedores.SQL.Text := dm.qrFornecedores.SQL.Text +
                         ' ORDER BY c.UF ';

             if rgOrdem.ItemIndex = 2 then
               dm.qrFornecedores.SQL.Text := dm.qrFornecedores.SQL.Text +
                         ' ORDER BY c.UF DESC';
           end;
     end;

     DM.qrFornecedores.Open;
     if DM.qrFornecedores.IsEmpty then
       MessageDlg('Consulta vazia !',mtWarning, [mbOk], 0);
end;

end.
