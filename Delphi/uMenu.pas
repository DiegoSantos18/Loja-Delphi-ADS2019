unit uMenu;

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
    Consultas1: TMenuItem;
    Relatrios1: TMenuItem;
    Sobre1: TMenuItem;
    Clientes1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    ImageList1: TImageList;
    Vendedores1: TMenuItem;
    Fornecedores1: TMenuItem;
    N2: TMenuItem;
    Produtos1: TMenuItem;
    N3: TMenuItem;
    Vendas1: TMenuItem;
    Fornecedores2: TMenuItem;
    Clientes2: TMenuItem;
    Vendedores2: TMenuItem;
    Produtos2: TMenuItem;
    N4: TMenuItem;
    Cidades1: TMenuItem;
    Cidades2: TMenuItem;
    Vendedores3: TMenuItem;
    Clientes3: TMenuItem;
    Fornecedores3: TMenuItem;
    Produtos3: TMenuItem;
    Vendas2: TMenuItem;
    Cidades3: TMenuItem;
    Vendas3: TMenuItem;
    procedure Clientes1Click(Sender: TObject);
    procedure Vendedores1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure Vendas1Click(Sender: TObject);
    procedure Fornecedores2Click(Sender: TObject);
    procedure Clientes2Click(Sender: TObject);
    procedure Vendedores2Click(Sender: TObject);
    procedure Produtos2Click(Sender: TObject);
    procedure Cidades1Click(Sender: TObject);
    procedure Cidades2Click(Sender: TObject);
    procedure Vendedores3Click(Sender: TObject);
    procedure Clientes3Click(Sender: TObject);
    procedure Fornecedores3Click(Sender: TObject);
    procedure Produtos3Click(Sender: TObject);
    procedure Vendas2Click(Sender: TObject);
    procedure Cidades3Click(Sender: TObject);
    procedure Vendas3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenu: TfrmMenu;

implementation

{$R *.dfm}

uses uCliente, uVendedor, uFornecedores, uProdutos, uVendas, uConsultaFornec,
  uConsultaClientes, uConsultaVendedores, uConsultaProdutos, uCidade,
  uConsultaCidade, uRelVendedores, uRelCidades, uRelClientes, uRelFornecedores,
  uRelProdutos, uRelVendas, uConsultaVendas;

procedure TfrmMenu.Cidades1Click(Sender: TObject);
begin
    frmCadCidade.ShowModal;
end;

procedure TfrmMenu.Cidades2Click(Sender: TObject);
begin
   frmConsultaCidade.ShowModal;
end;

procedure TfrmMenu.Cidades3Click(Sender: TObject);
begin
    frmRelCidades.ShowModal;
end;

procedure TfrmMenu.Clientes1Click(Sender: TObject);
begin
     frmCadCli.ShowModal;
end;

procedure TfrmMenu.Clientes2Click(Sender: TObject);
begin
     frmLocClientes.showmodal;
end;

procedure TfrmMenu.Clientes3Click(Sender: TObject);
begin
     frmRelClientes.ShowModal;
end;

procedure TfrmMenu.Fornecedores1Click(Sender: TObject);
begin
     frmCadFornecedores.ShowModal;
end;

procedure TfrmMenu.Fornecedores2Click(Sender: TObject);
begin
    frmLocFornecedores.showmodal;
end;

procedure TfrmMenu.Fornecedores3Click(Sender: TObject);
begin
    frmRelFornecedores.ShowModal;
end;

procedure TfrmMenu.Produtos1Click(Sender: TObject);
begin
     frmCadProdutos.ShowModal;
end;

procedure TfrmMenu.Produtos2Click(Sender: TObject);
begin
     frmLocProdutos.ShowModal;
end;

procedure TfrmMenu.Produtos3Click(Sender: TObject);
begin
    frmRelProdutos.ShowModal;
end;

procedure TfrmMenu.Vendas1Click(Sender: TObject);
begin
     frmCadVendas.ShowModal;
end;

procedure TfrmMenu.Vendas2Click(Sender: TObject);
begin
    frmRelVendas.ShowModal;
end;

procedure TfrmMenu.Vendas3Click(Sender: TObject);
begin
    frmLocVendas.ShowModal;
end;

procedure TfrmMenu.Vendedores1Click(Sender: TObject);
begin
     frmCadVendedores.Showmodal;
end;

procedure TfrmMenu.Vendedores2Click(Sender: TObject);
begin
     frmConVendedores.showModal;
end;

procedure TfrmMenu.Vendedores3Click(Sender: TObject);
begin
  frmRelVendedores.ShowModal;
end;

end.
