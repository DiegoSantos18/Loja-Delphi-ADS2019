unit uConsultaVendedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrmConVendedores = class(TForm)
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
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
  frmConVendedores: TfrmConVendedores;

implementation

{$R *.dfm}

uses uDM;

{
procedure TfrmConVendedores.edBuscaKeyPress(Sender: TObject; var Key: Char);
begin
  //Se selecionar codigo na consulta so aceita numeros
  if rgSelecao.ItemIndex = 0  then
      if not (Key in['0'..'9',Chr(8)]) then Key:= #0;
end;
 }

procedure TfrmConVendedores.btLocalizarClick(Sender: TObject);
begin
  dm.qrVendedores.Close;
     dm.qrVendedores.SQL.Text := 'SELECT * FROM VENDEDORES';
     case rgSelecao.ItemIndex of
       0 : begin
             if edbusca.Text <> '' then
             begin
                  dm.qrVendedores.SQL.Text := dm.qrVendedores.SQL.Text +
                         '  WHERE CDVENDEDOR = :pCDVENDEDOR';
                  Try // para o finally
                  Try  // para o except
                  dm.qrVendedores.ParamByName('pCDVENDEDOR').Value :=
                      StrToInt(edBusca.Text);
                  except
                  Showmessage('Código inválido!');
                  end;
                  finally
                  End;
             end;
             if rgOrdem.ItemIndex = 1 then
               dm.qrVendedores.SQL.Text := dm.qrVendedores.SQL.Text +
                         ' ORDER BY CDVENDEDOR ';

             if rgOrdem.ItemIndex = 2 then
               dm.qrVendedores.SQL.Text := dm.qrVendedores.SQL.Text +
                         ' ORDER BY CDVENDEDOR DESC';
           end;
       1 : begin
             if edbusca.Text <> '' then
             begin
                  dm.qrVendedores.SQL.Text := dm.qrVendedores.SQL.Text +
                         '  WHERE DCVENDEDOR CONTAINING :pDCVENDEDOR';
                  dm.qrVendedores.ParamByName('pDCVENDEDOR').Value :=
                      edBusca.Text;
             end;
             if rgOrdem.ItemIndex = 1 then
               dm.qrVendedores.SQL.Text := dm.qrVendedores.SQL.Text +
                         ' ORDER BY DCVENDEDOR ';

             if rgOrdem.ItemIndex = 2 then
               dm.qrVendedores.SQL.Text := dm.qrVendedores.SQL.Text +
                         ' ORDER BY DCVENDEDOR DESC';
           end;
     end;

     DM.qrVendedores.Open;
     if DM.qrVendedores.IsEmpty then
       MessageDlg('Consulta vazia !',mtWarning, [mbOk], 0);


end;



end.
