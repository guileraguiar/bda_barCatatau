create database bda_catatau

use bda_catatau

create TABLE clientes (
    cod_cliente int identity(1, 1) CONSTRAINT PK_CLIENTE primary key,
    nome VARCHAR (255),
    cpf VARCHAR (20),
    sexo varchar (20),
    endereco varchar (300),
    dt_cadastro date,
)

create TABLE fornecedores (
    cod_fornecedor int identity(1, 1) CONSTRAINT PK_FORNECEDOR primary key,
    razao_social VARCHAR (255),
    cnpj VARCHAR (20),
    endereco varchar (300),
    dt_cadastro date,
)

create TABLE funcionarios (
    cod_funcionario int identity(1, 1) CONSTRAINT PK_FUNCIONARIO primary key,
    nome VARCHAR (255),
    cpf VARCHAR (20),
    sexo varchar (20),
    endereco varchar (300),
    dt_admissao date,
)

create TABLE mercadoria (
    cod_produto int identity(00, 1) CONSTRAINT PK_PRODUTO primary key,
    cod_fornecedor int,
    nome_produto VARCHAR (255),
    descricao text,
    qtde_estoque int,
    preco_unit float,
    dt_cadastro date,
    CONSTRAINT cod_fornecedor FOREIGN KEY (cod_fornecedor) REFERENCES fornecedores(cod_fornecedor),
)

create TABLE comanda (
    num_comanda int identity(000, 1) CONSTRAINT PK_COMANDA primary key,
    cod_produto int,
    nome_produto varchar (255),
    descricao text,
    qtde_estoque int,
    preco_unit float,
    dt_cadastro date,
    CONSTRAINT cod_produto FOREIGN KEY (cod_produto) REFERENCES mercadoria(cod_produto),
)

SELECT * from comanda

ALTER TABLE dbo.comanda DROP COLUMN dt_cadastro;
ALTER TABLE comanda ADD sub_total float;
exec sp_rename 'Comanda.[qtde_estoque]', 'qtde', 'column'

create TABLE cupom_fiscal (
    coo int identity(000, 1) CONSTRAINT PK_COO primary key,
    num_comanda int,
    dt_movimento date,
    cod_produto int,
    nome_produto varchar(255),
    CONSTRAINT num_comanda FOREIGN KEY (num_comanda) REFERENCES comanda(num_comanda)
)

SELECT * FROM cupom_fiscal