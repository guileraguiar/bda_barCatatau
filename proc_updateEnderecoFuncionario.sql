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