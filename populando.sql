SET DATEFORMAT dmy

-- INSERINDO DADOS CLIENTES

INSERT clientes ([nome],[cpf],[sexo],[endereco],[dt_cadastro])
VALUES
('Dornélis', '123.123.123-10', 'Feminimo', 'Rua Guanabara, 100, Itaum - Joinville, SC', '25-02-2021')

INSERT clientes ([nome],[cpf],[sexo],[endereco],[dt_cadastro])
VALUES
('José Colmeia', '321.125.423-20', 'Masculino', 'Rua Aquidaban, 240, Atiradores - Joinville, SC', '28-03-2020')

INSERT clientes ([nome],[cpf],[sexo],[endereco],[dt_cadastro])
VALUES
('Patrick Star', '567.259.251-15', 'Masculino', 'Rua Nove de Março, 124, Centro - Joinville, SC', '15-03-2020')

INSERT clientes ([nome],[cpf],[sexo],[endereco],[dt_cadastro])
VALUES
('Jerry Smith', '146.152.642-12', 'Masculino', 'Rua Videira, 111, Iririú - Joinville, SC', '16-03-2020')

INSERT clientes ([nome],[cpf],[sexo],[endereco],[dt_cadastro])
VALUES
('Irineu Costa', '179.190.268-20', 'Masculino', 'Rua Genésio Eleotério, 121, Petrópolis - Joinville, SC', '16-03-2020')

INSERT clientes ([nome],[cpf],[sexo],[endereco],[dt_cadastro])
VALUES
('Betina Rochs', '120.158.160-99', 'Feminino', 'Rua Max Miers, 79, América - Joinville, SC', '17-03-2020')

SELECT * from clientes

-- INSERINDO DADOS FUNCIONÁRIOS


insert funcionarios ([nome],[cpf],[sexo],[endereco],[dt_admissao])
VALUES
('Davizinho Psorildo', '256.923.219-55', 'Masculino', 'Rua Joao Pessoa,391,Santo Antonio - Joinville, SC', '16-03-2020')

insert funcionarios ([nome],[cpf],[sexo],[endereco],[dt_admissao])
VALUES
('Lurdes Clotilde', '198.467.298-75', 'Feminino', 'Rua Doutor Joao Pessoa,2581,America - Joinville, SC', '17-03-2020')

insert funcionarios ([nome],[cpf],[sexo],[endereco],[dt_admissao])
VALUES
('Nicole Anchieta', '167.034.350-78', 'Feminino', 'Rua Alfredo Timm,464,Boehmerwald - Joinville, SC', '18-05-2020')

insert funcionarios ([nome],[cpf],[sexo],[endereco],[dt_admissao])
VALUES
('James Bond', '007.007.007-07', 'Masculino', 'Rua Miguel Alfredo Erzinger,12,Pirabeiraba - Joinville, SC', '07-07-2007')

insert funcionarios ([nome],[cpf],[sexo],[endereco],[dt_admissao])
VALUES
('Julio Verne', '321.456.698-90', 'Masculino', 'Rua Pavão,202,Costa e Silva - Joinville, SC', '15-02-2012')

insert funcionarios ([nome],[cpf],[sexo],[endereco],[dt_admissao])
VALUES
('Tanajura Jacobson', '021.269.459-66', 'Feminino', 'Rua Érico Venâncio Alves,593,Espinheiros - Joinville, SC', '12-12-2018')

SELECT * FROM funcionarios


-- INSERINDO DADOS MERCADORIAS (PRODUTOS) 

USE bda_catatau

INSERT mercadoria ([nome_produto], [cod_fornecedor],[descricao],[qtde_estoque],[preco_unit],[dt_cadastro])
VALUES
('RedBull', '1', 'LATA 300ML SENSATIONS', '50', 7.50 ,'2021-09-03')

INSERT mercadoria ([nome_produto], [cod_fornecedor],[descricao],[qtde_estoque],[preco_unit],[dt_cadastro])
VALUES
('Skoll Beats', '2', 'LONG NECK 300ML SENSES', '27', 8.49 ,'2021-09-02')

INSERT mercadoria ([nome_produto], [cod_fornecedor],[descricao],[qtde_estoque],[preco_unit],[dt_cadastro])
VALUES
('Velho Barreiro', '2', 'GARRAFA 910ML OURO', '70',99.99 ,'2021-09-06')

INSERT mercadoria ([nome_produto], [cod_fornecedor],[descricao],[qtde_estoque],[preco_unit],[dt_cadastro])
VALUES
('Johnnie Walker', '4', 'GARRAFA 1L RED LABEL', '36', 108.49 ,'2021-09-02')

INSERT mercadoria ([nome_produto], [cod_fornecedor],[descricao],[qtde_estoque],[preco_unit],[dt_cadastro])
VALUES
('Absolut', '2', 'SMIRNOFF 998ML', '32', 30.49 ,'2021-09-03')

INSERT mercadoria ([nome_produto], [cod_fornecedor],[descricao],[qtde_estoque],[preco_unit],[dt_cadastro])
VALUES
('Skyy', '1', 'VODKA 980ML', '5', 37.99 ,'2021-09-02')

INSERT mercadoria ([nome_produto], [cod_fornecedor],[descricao],[qtde_estoque],[preco_unit],[dt_cadastro])
VALUES
('BRAHMA', '3', 'DUPLO MALTE 350ML', '125', 3.20 ,'2021-08-27')

SELECT * FROM mercadoria
delete from mercadoria where cod_produto = '2'


-- INSERINDO DADOS FORNECEDORES

INSERT FORNECEDORES ([razao_social],[CNPJ], [endereco], [dt_cadastro])
VALUES ('Comércio de bebidas Joinville', '12.245.681/0001-30','Rua Irineu José Gomes, 714, Anita Garibaldi – Joinville, SC', '20-01-2020')

INSERT FORNECEDORES ([razao_social],[CNPJ], [endereco], [dt_cadastro])
VALUES ('Disk Bebidas 24hrs', '59.123.493/0001-08','Rua Boca da Barra, 3001, Aventureiro – Joinville, SC', '20-02-2021')

INSERT FORNECEDORES ([razao_social],[CNPJ], [endereco], [dt_cadastro])
VALUES ('Lívia e Stefany Comercio de Bebidas Ltda', '16.160.020/0001-60','Rua Tiradentes, 350, Floresta – Joinville, SC', '10-10-2020')

INSERT FORNECEDORES ([razao_social],[CNPJ], [endereco], [dt_cadastro])
VALUES ('Seu Zé Distribuidor de Bebidas', '58.640.131/0001-13','Rua Marquinhos Silva, 200, Centro – Joinville, SC', '30-03-2019')

INSERT FORNECEDORES ([razao_social],[CNPJ], [endereco], [dt_cadastro])
VALUES ('Ligue Bebidas 24hrs', '82.254.451/0001-10','Avenida José Ribeiro, 471, Profipo – Joinville, SC', '14-07-2017')

INSERT FORNECEDORES ([razao_social],[CNPJ], [endereco], [dt_cadastro])
VALUES ('Bebidas Sky', '03.059.986/0001-63','Rua Padre Santo Antônio, 555, Santo Antônio – Joinville, SC', '26-05-2018')

SELECT * FROM fornecedores


-- INSERINDO DADOS COMANDAS

INSERT COMANDA ([cod_produto],[nome_produto], [descricao], [qtde], [preco_unit], [sub_total])
VALUES ('1','RedBull','LATA 300ML SENSATIONS',2,7.50,15.00)

INSERT COMANDA ([cod_produto],[nome_produto], [descricao], [qtde], [preco_unit], [sub_total])
VALUES ('3','Velho Barreiro','GARRAFA 910ML OURO',1,99.99,99.99)

INSERT COMANDA ([cod_produto],[nome_produto], [descricao], [qtde], [preco_unit], [sub_total])
VALUES ('3','Skoll Beats','LONG NECK 300ML SENSES',5,8.49, 42.45)

INSERT COMANDA ([cod_produto],[nome_produto], [descricao], [qtde], [preco_unit], [sub_total])
VALUES ('1','RedBull','LATA 300ML SENSATIONS',3,7.50,22.50)

INSERT COMANDA ([cod_produto],[nome_produto], [descricao], [qtde], [preco_unit], [sub_total])
VALUES ('4','Johnnie Walker','GARRAFA 1L RED LABEL', 2,108.49,216.98)

INSERT COMANDA ([cod_produto],[nome_produto], [descricao], [qtde], [preco_unit], [sub_total])
VALUES ('3','Velho Barreiro','GARRAFA 910ML OURO',3,99.99,299.97)

SELECT * FROM COMANDA