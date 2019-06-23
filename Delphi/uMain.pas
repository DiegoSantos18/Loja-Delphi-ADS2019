unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, System.ImageList, Vcl.ImgList;

type
  TfrmMenu = class(TForm)
    MainMenu1: TMainMenu;
    Panel1: TPanel;
    imgMenu: TImage;
    Cadastros1: TMenuItem;
    N1: TMenuItem;
    Consultas1: TMenuItem;
    Relatrios1: TMenuItem;
    Sobre1: TMenuItem;
    N2: TMenuItem;
    Sair1: TMenuItem;
    ImageList1: TImageList;
    Fornecedores1: TMenuItem;
    Vendedores1: TMenuItem;
    Produtos1: TMenuItem;
    Vendas1: TMenuItem;
    procedure N1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure Vendedores1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure Vendas1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenu: TfrmMenu;

implementation

{$R *.dfm}

uses uCliente, UFornecedor, uVendedor, uProdutos, uVendas;

procedure TfrmMenu.Fornecedores1Click(Sender: TObject);
begin
    frmCadFornec.ShowModal;
end;

procedure TfrmMenu.N1Click(Sender: TObject);
begin
    frmCadCliente.ShowModal;
end;

procedure TfrmMenu.Produtos1Click(Sender: TObject);
begin
   frmCadProdutos.ShowModal;
end;

procedure TfrmMenu.Sair1Click(Sender: TObject);
begin
    frmMenu.Close;
end;

procedure TfrmMenu.Vendas1Click(Sender: TObject);
begin
    frmCadVendas.ShowModal;
end;

procedure TfrmMenu.Vendedores1Click(Sender: TObject);
begin
    frmCadVend.ShowModal;
end;

end.
