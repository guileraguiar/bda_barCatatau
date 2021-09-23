CREATE PROCEDURE cadastrarComanda (
    @num_comanda int, @nome_item char(255), @preco float, @qtde_item int, @preco_total float, @dt_emissao date
)
AS
BEGIN

INSERT INTO Comanda (nome_item, preco, qtde_item, dt_emissao)
VALUES (
    @nome_item, @preco, @qtde_item, @dt_emissao
)

UPDATE Comanda SET preco_total = preco * qtde_item WHERE num_comanda = @num_comanda
END

EXEC cadastrarComanda
@num_comanda = 2,
@nome_item = 'WHISKY - JOHNNIE WALKER - GARRAFA - 1L - RED LABEL',
@preco = 108.49,
@qtde_item = 4,
@dt_emissao = '2021-07-27',
@preco_total = ''

SELECT * FROM Comanda
SELECT * FROM item
