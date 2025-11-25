USE biblioteca_marcao;
GO


CREATE PROCEDURE P_registrar_devolucao
(
	@id_livro INT
)
AS
BEGIN   
	SET NOCOUNT ON
	DECLARE @id_emprestimo INT;
	DECLARE @Data_atual DATE;
	SET @Data_atual = GETDATE();

	SELECT TOP 1 @id_emprestimo = id_emprestimo
	FROM tbl_emprestimo
	WHERE id_livrofk = @id_livro
	ORDER BY data_emprestimo DESC;

		IF EXISTS  
				(SELECT 1 FROM tbl_livro WHERE id_livro = @id_livro AND disponivel = 0)
			BEGIN
				BEGIN TRAN
					UPDATE tbl_livro
					SET	disponivel =  1
					WHERE id_livro = @id_livro
				COMMIT
				PRINT 'DEVOLUCAO REALIZADO COM SUCESSO'
			END

		ELSE
		BEGIN
			PRINT'ERRO  NA DEVULUCAO!'
		END
		IF EXISTS 
			(SELECT 1 FROM tbl_emprestimo WHERE id_livrofk = @id_livro AND @Data_atual < data_devolucao )
			BEGIN
				BEGIN TRAN
					UPDATE tbl_emprestimo 
					SET data_devolucao = GETDATE()
					WHERE id_emprestimo = @id_emprestimo
				COMMIT
				PRINT 'DEVOLUÇAO ADIANTADA'
			END
		IF EXISTS 
			(SELECT 1 FROM tbl_emprestimo WHERE id_livrofk = @id_livro AND @Data_atual > data_devolucao )
			BEGIN
				BEGIN TRAN
					UPDATE tbl_emprestimo 
					SET data_devolucao = GETDATE()
					WHERE id_emprestimo = @id_emprestimo
				COMMIT
				PRINT 'DEVOLUÇAO ATRASADA'
			END

END
GO