USE biblioteca_marcao;
GO

CREATE PROCEDURE P_emprestimo
(
		@id_livro		 INT,
		@id_clientefk	 INT

)
AS 
BEGIN	
	SET NOCOUNT ON
		DECLARE @data_emprestimo DATE;
		DECLARE @data_devolucao DATE; 
		SET @data_emprestimo = GETDATE()
		SET @data_devolucao = DATEADD(MONTH,1,@data_emprestimo)

			IF EXISTS  
				(SELECT 1 FROM tbl_livro, tbl_cliente WHERE id_livro = @id_livro AND disponivel = 1 AND id_cliente = @id_clientefk)
				BEGIN
					BEGIN TRAN
						INSERT INTO tbl_emprestimo (data_emprestimo, data_devolucao, id_livrofk, id_clientefk)
						VALUES 
						(@data_emprestimo,@data_devolucao,@id_livro,@id_clientefk)
					
							EXEC P_livro_disponivel @id_livro;
					COMMIT
				  END
				 
				 ELSE IF EXISTS  
				(SELECT 1 FROM tbl_emprestimo WHERE id_livrofk = @id_livro AND id_clientefk = @id_clientefk )
				BEGIN
					PRINT'LIVRO EMPRESTADO' 
				END				
			
			ELSE
				BEGIN
					PRINT'LIVRO OU CLIENTE NAO EXISTE'
			END
END
GO