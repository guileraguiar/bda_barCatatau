CREATE PROCEDURE uspUpdateFuncionario(
    @matricula INT, @endereco CHAR(255) -- VERIFICAR PARAMÊTROS
)
AS
BEGIN   
    UPDATE Funcionario SET endereco = @endereco WHERE matricula = @matricula;
END

EXEC uspUpdateFuncionario 
    @matricula = 2,
    @endereco = 'Rua Adalberto Probst - N°745 - Bairro: Adhemar Garcia - Cidade: Joinville - SC' 

SELECT * FROM Funcionario


/*
CREATE PROCEDURE CadastrarVenda
@num_comanda INT, @nome_item CHAR(255), @preco FLOAT, @qtde_item INT, @preco_total FLOAT, dt_emissao DATE
AS
BEGIN
DECLARE @num_comanda INT
DECLARE @nome_item CHAR(255)
DECLARE @preco FLOAT
DECLARE @qtde_item INT
DECLARE @preco_total FLOAT
DECLARE dt_emissao DATE

END