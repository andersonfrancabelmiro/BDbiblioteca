USE biblioteca_marcao;
GO

CREATE TRIGGER T_evitar_erro
ON tbl_emprestimo
INSTEAD OF DELETE
AS
BEGIN
    THROW 50001, 'Delete nao permitido!', 1;
END
GO
