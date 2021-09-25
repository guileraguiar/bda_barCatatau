create database bda_catatau

CREATE TABLE Item (
cod_item Integer IDENTITY CONSTRAINT PK_COD_ITEM PRIMARY KEY,
nome_item char(255),
preco float
)

CREATE TABLE Bar_do_Catatau (
cnpj char(20) CONSTRAINT PK_CNPJ PRIMARY KEY,
razao_social char(50),
endereco char(255)
)

alter table Bar_do_Catatau
add dt_abertura date

CREATE TABLE Funcionario (
matricula integer IDENTITY CONSTRAINT PK_MATRICULA PRIMARY KEY,
nome char(125),
endereco char(255),
cpf char(20),
cnpj char(20),
CONSTRAINT FK_CNPJ FOREIGN KEY(cnpj) REFERENCES Bar_do_Catatau(cnpj)
)

CREATE TABLE Itens_Comanda (
nome_item char(255),
preco float,
cod_item Integer,
num_comanda integer,
CONSTRAINT FK_COD_ITEM FOREIGN KEY(cod_item) REFERENCES Item (cod_item)
)

CREATE TABLE Comanda (
num_comanda integer IDENTITY CONSTRAINT PK_NUM_COMANDA PRIMARY KEY,
nome_item char(255),
preco float,
qtde_item integer,
preco_total float,
dt_emissao date
)

alter table Comanda add cod_item int -- Adicionando a coluna
alter table Comanda add CONSTRAINT FK_COD_ITEM_COMANDA FOREIGN key (cod_item) REFERENCES Item(cod_item) -- Tornando-a uma chave estrangeira

CREATE TABLE Recebe (
matricula integer,
num_comanda integer,
CONSTRAINT FK_MATRICULA FOREIGN KEY(matricula) REFERENCES Funcionario (matricula),
CONSTRAINT FK_NUM_COMANDA FOREIGN KEY(num_comanda) REFERENCES Comanda (num_comanda)
)

ALTER TABLE Itens_Comanda ADD FOREIGN KEY(num_comanda) REFERENCES Comanda (num_comanda)