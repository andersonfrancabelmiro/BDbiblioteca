
USE biblioteca_marcao;
GO

CREATE PROCEDURE P_inserir_livros
(
	@titulo VARCHAR(100),
	@autor VARCHAR(100),
	@ano_publicacao INT,
	@genero VARCHAR(50),
	@disponivel INT
)
AS
BEGIN 

	SET NOCOUNT ON


		INSERT INTO tbl_livro VALUES (@titulo,@autor,@ano_publicacao,@genero,@disponivel)
		PRINT 'INSERIDO COM SUCESSO!'

END
GO




