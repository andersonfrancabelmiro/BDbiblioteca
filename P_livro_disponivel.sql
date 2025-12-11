USE biblioteca_marcao;
GO

CREATE PROCEDURE P_livro_disponivel
(
	@id_livro INT
)
AS
BEGIN   
	SET NOCOUNT ON
		IF EXISTS 
			(SELECT 1 FROM tbl_livro WHERE id_livro = @id_livro AND disponivel = 1)
			BEGIN
				BEGIN TRAN
					UPDATE tbl_livro
					SET	disponivel =  0
					WHERE id_livro = @id_livro
				COMMIT
				
			END
END
GO