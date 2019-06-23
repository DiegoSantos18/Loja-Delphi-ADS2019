program Loja;

uses
  Vcl.Forms,
  uMenu in 'Delphi\uMenu.pas' {frmMenu},
  uDM in 'Delphi\uDM.pas' {dm: TDataModule},
  uCliente in 'Delphi\uCliente.pas' {frmCadCli},
  uVendedor in 'Delphi\uVendedor.pas' {frmCadVendedores},
  uFornecedores in 'Delphi\uFornecedores.pas' {frmCadFornecedores},
  uProdutos in 'Delphi\uProdutos.pas' {frmCadProdutos},
  uVendas in 'Delphi\uVendas.pas' {frmCadVendas},
  uConsultaFornec in 'Delphi\uConsultaFornec.pas' {frmLocFornecedores},
  uConsultaClientes in 'Delphi\uConsultaClientes.pas' {frmLocClientes},
  uConsultaVendedores in 'Delphi\uConsultaVendedores.pas' {frmConVendedores},
  uConsultaProdutos in 'Delphi\uConsultaProdutos.pas' {frmLocProdutos},
  uCidade in 'Delphi\uCidade.pas' {frmCadCidade},
  uConsultaCidade in 'Delphi\uConsultaCidade.pas' {frmConsultaCidade},
  uRelVendedores in 'Delphi\uRelVendedores.pas' {frmRelVendedores},
  uRelClientes in 'Delphi\uRelClientes.pas' {frmRelClientes},
  uRelFornecedores in 'Delphi\uRelFornecedores.pas' {frmRelFornecedores},
  uRelProdutos in 'Delphi\uRelProdutos.pas' {frmRelProdutos},
  uRelVendas in 'Delphi\uRelVendas.pas' {frmRelVendas},
  uRelCidades in 'Delphi\uRelCidades.pas' {frmRelCidades},
  uConsultaVendas in 'Delphi\uConsultaVendas.pas' {frmLocVendas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmCadCli, frmCadCli);
  Application.CreateForm(TfrmCadVendedores, frmCadVendedores);
  Application.CreateForm(TfrmCadFornecedores, frmCadFornecedores);
  Application.CreateForm(TfrmCadProdutos, frmCadProdutos);
  Application.CreateForm(TfrmCadVendas, frmCadVendas);
  Application.CreateForm(TfrmLocFornecedores, frmLocFornecedores);
  Application.CreateForm(TfrmLocClientes, frmLocClientes);
  Application.CreateForm(TfrmConVendedores, frmConVendedores);
  Application.CreateForm(TfrmLocProdutos, frmLocProdutos);
  Application.CreateForm(TfrmCadCidade, frmCadCidade);
  Application.CreateForm(TfrmConsultaCidade, frmConsultaCidade);
  Application.CreateForm(TfrmRelVendedores, frmRelVendedores);
  Application.CreateForm(TfrmRelClientes, frmRelClientes);
  Application.CreateForm(TfrmRelFornecedores, frmRelFornecedores);
  Application.CreateForm(TfrmRelProdutos, frmRelProdutos);
  Application.CreateForm(TfrmRelVendas, frmRelVendas);
  Application.CreateForm(TfrmRelCidades, frmRelCidades);
  Application.CreateForm(TfrmLocVendas, frmLocVendas);
  Application.Run;
end.
