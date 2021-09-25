ALTER PROCEDURE cadastrarComanda (
    @cod_item int, @qtde_item int
)
AS
BEGIN
INSERT INTO Comanda (cod_item, qtde_item, dt_emissao)
VALUES (
    @cod_item, @qtde_item, GETDATE()
)

    UPDATE Comanda SET nome_item = i.nome_item, preco = i.preco from Item i where @cod_item = i.cod_item and num_comanda = @@IDENTITY
    UPDATE Comanda SET preco_total = preco * qtde_item WHERE num_comanda = @@IDENTITY

END

EXEC cadastrarComanda
@cod_item = 3,
@qtde_item = 10

SELECT * FROM item
SELECT * FROM Comanda