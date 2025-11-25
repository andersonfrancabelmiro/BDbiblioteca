
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

END
GO

CREATE PROCEDURE P_inserir_clientes
(

	@nome VARCHAR(100),
	@telefone VARCHAR(20),
	@email VARCHAR(20)
)
AS
BEGIN

	SET NOCOUNT ON

	INSERT INTO tbl_cliente VALUES (@nome,@telefone,@email) 

END
GO

CREATE PROCEDURE P_deletar_cliente
(
	@id_cliente INT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM tbl_cliente WHERE id_cliente = @id_cliente

END
GO

USE biblioteca_marcao;
GO

CREATE PROCEDURE P_deletar_livro
(
	@id_livro INT
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM tbl_livro WHERE id_livro = @id_livro

END
GO






