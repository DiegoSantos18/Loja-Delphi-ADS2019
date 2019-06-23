unit uConsultaCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrmConsultaCidade = class(TForm)
    DBGrid1: TDBGrid;
    rgSelecao: TRadioGroup;
    btLocalizar: TButton;
    edBusca: TEdit;
    rgOrdem: TRadioGroup;
    procedure btLocalizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaCidade: TfrmConsultaCidade;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmConsultaCidade.btLocalizarClick(Sender: TObject);
begin
  dm.qrCidade.Close;
     dm.qrCidade.SQL.Text := 'SELECT * FROM CIDADES';
     case rgSelecao.ItemIndex of
       0 : begin
             if edbusca.Text <> '' then
             begin
                  dm.qrCidade.SQL.Text := dm.qrCidade.SQL.Text +
                         '  WHERE CODIGO = :pCODIGO';
                  Try // para o finally
                  Try  // para o except
                  dm.qrCidade.ParamByName('pCODIGO').Value :=
                      StrToInt(edBusca.Text);
                  except
                  Showmessage('Código inválido!');
                  end;
                  finally
                  End;
             end;
             if rgOrdem.ItemIndex = 1 then
               dm.qrCidade.SQL.Text := dm.qrCidade.SQL.Text +
                         ' ORDER BY CODIGO ';

             if rgOrdem.ItemIndex = 2 then
               dm.qrCidade.SQL.Text := dm.qrCidade.SQL.Text +
                         ' ORDER BY CODIGO DESC';
           end;
       1 : begin
             if edbusca.Text <> '' then
             begin
                  dm.qrCidade.SQL.Text := dm.qrCidade.SQL.Text +
                         '  WHERE NOME CONTAINING :pNOME';
                  dm.qrCidade.ParamByName('pNOME').Value :=
                      edBusca.Text;
             end;
             if rgOrdem.ItemIndex = 1 then
               dm.qrCidade.SQL.Text := dm.qrCidade.SQL.Text +
                         ' ORDER BY NOME ';

             if rgOrdem.ItemIndex = 2 then
               dm.qrCidade.SQL.Text := dm.qrCidade.SQL.Text +
                         ' ORDER BY NOME DESC';
           end;
      2 : begin
             if edbusca.Text <> '' then
             begin
                  dm.qrCidade.SQL.Text := dm.qrCidade.SQL.Text +
                         '  WHERE UF CONTAINING :pUF';
                  dm.qrCidade.ParamByName('pUF').Value :=
                      edBusca.Text;
             end;
             if rgOrdem.ItemIndex = 1 then
               dm.qrCidade.SQL.Text := dm.qrCidade.SQL.Text +
                         ' ORDER BY UF ';

             if rgOrdem.ItemIndex = 2 then
               dm.qrCidade.SQL.Text := dm.qrCidade.SQL.Text +
                         ' ORDER BY UF DESC';
           end;
     end;

     DM.qrCidade.Open;
     if DM.qrCidade.IsEmpty then
       MessageDlg('Consulta vazia !',mtWarning, [mbOk], 0);
end;

end.
