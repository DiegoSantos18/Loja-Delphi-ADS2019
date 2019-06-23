/* TABELA DE CIDADES*/ 
CREATE TABLE cidades
(codigo integer not null,
nome varchar(50),
uf char(2) not null,
constraint pkCodigo primary key(codigo)
);	

/* TABELA DE FORNECEDORES*/ 
create table fornecedores
(   cdfornecedor integer not null,
    dcfornecedor varchar(30),
    endereco varchar(40),
    bairro varchar(20),
    cidade integer not null,
    telefone varchar(10),
    cep varchar(8),

    constraint pkfornecedores primary key(cdfornecedor),
    constraint fkcidade foreign key (cidade) references CIDADES (codigo)
    );
    
/* TABELA DE CLIENTES*/ 
create table clientes
(   cdcliente integer not null,
    dccliente varchar(30),
    endereco varchar(40),
    bairro varchar(20),
    cidade integer not null,
    telefone varchar(10),
    cep varchar(8),
    constraint pkclientes primary key(cdcliente),
    constraint fkcidade2 foreign key (cidade) references CIDADES (codigo)
    );

/* TABELA DE VENDEDORES*/ 
create table vendedores
(   cdvendedor integer not null,
    dcvendedor varchar(30),
    constraint pkvendedores primary key(cdvendedor));

/* TABELA DE PRODUTOS*/ 
create table produtos
(   cdproduto integer not null,
    dcproduto varchar(30),
    vlproduto decimal(16,2),
    qtestoque decimal(16,2),
    qtminima decimal(16,2),
    cdfornecedor integer not null,
    constraint pkprodutos primary key(cdproduto),
    constraint fkprodutosfornecedores foreign key(cdfornecedor)
     references fornecedores(cdfornecedor));

/* TABELA DE VENDAS*/
create table vendas
(   nrvenda integer not null,
    dtvenda date not null,
    cdcliente integer not null,
    cdvendedor integer not null,
    constraint pkvendas primary key(nrvenda),
    constraint fkvendasclientes foreign key(cdcliente)
     references clientes(cdcliente),
    constraint fkvendasvendedores foreign key(cdvendedor)
     references vendedores(cdvendedor));

/* TABELA DE ITENS*/ 
create table itens
(   nrvenda integer not null,
    nritem integer not null,
    cdproduto integer not null,
    qtvenda decimal(16,2) not null,
    vlproduto decimal(16,2) not null,
    constraint pkitens primary key(nrvenda,nritem),
    constraint fkitensvendas foreign key(nrvenda)
    references vendas(nrvenda),
    constraint fkitensprodutos foreign key(cdproduto)
    references produtos(cdproduto));
	
	

	
