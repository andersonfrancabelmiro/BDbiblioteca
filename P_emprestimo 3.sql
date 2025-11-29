USE biblioteca_marcao;
GO

ALTER PROCEDURE P_emprestimo
(
		@idlvrofk	INT,
		@telefonefk	BIGINT NULL
)
AS 
BEGIN	
	SET NOCOUNT ON

		DECLARE @data_emprestimo DATE;
		DECLARE @data_devolucao DATE; 
		SET @data_emprestimo = GETDATE()
		SET @data_devolucao = DATEADD(MONTH,1,@data_emprestimo)


	 
		
			IF EXISTS  
				(SELECT 1 FROM tbl_livro,tbl_cliente WHERE id_livro = @idlvrofk AND telefone = @telefonefk AND disponivel = 1)
				BEGIN
					BEGIN TRAN
						INSERT INTO tbl_emprestimo (data_emprestimo, data_devolucao, id_livrofk, telefonefk)
						VALUES 
						(@data_emprestimo,@data_devolucao,@idlvrofk,@telefonefk)
					
							EXEC P_livro_disponivel  @idlvrofk
					COMMIT
				  END
				 
				
			 ELSE IF EXISTS  
				(SELECT 1 FROM tbl_emprestimo WHERE id_livrofk = @idlvrofk AND telefonefk = @telefonefk )
				BEGIN
					PRINT'LIVRO EMPRESTADO' 
				END				

END
GO

