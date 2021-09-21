CREATE PROCEDURE uspUpdateFuncionario
@matricula INT, @nome CHAR, @cpf CHAR, @endereco CHAR -- VERIFICAR PARAMÊTROS
AS
    DECLARE @matricula INT
    DECLARE @nome CHAR
    DECLARE @cpf CHAR
    DECLARE @endereco CHAR
    
    UPDATE Funcionario SET endereco = 'Rua Albano Schmidt - N°542 - Bairro: Boa Vista - Cidade: Joinville - SC' WHERE matricula = 270299555;
    UPDATE Funcionario SET endereco = 'Rua Horácio dos Santos Pereira Júnior - N°146 - Bairro: Parque Guarani - Cidade: Joinville - SC' WHERE matricula = 172419281;
    UPDATE Funcionario SET endereco = 'Rua Adalberto Probst - N°745 - Bairro: Adhemar Garcia - Cidade: Joinville - SC' WHERE matricula = 105145725;
    UPDATE Funcionario SET endereco = 'Rua Adalberto Schmalz - N°852 - Bairro: Glória - Cidade: Joinville - SC' WHERE matricula = 232410835;
    UPDATE Funcionario SET endereco = 'Rua Adele Trapp - N°973 - Bairro: Costa e Silva - Cidade: Joinville - SC' WHERE matricula = 243847828;

FROM Funcionario

EXEC uspUpdateFuncionario