
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
	BEGIN TRAN


			IF 
				(@titulo ='' ) 
			 or ( @autor ='')
			 or ( @ano_publicacao ='')
			 or ( @genero ='') 		 
				BEGIN
					PRINT'CAMPO NAO PODE SER NULO'
					ROLLBACK
					RETURN
				END
			ELSE IF (@disponivel < 0 OR @disponivel > 1 )
			BEGIN
					PRINT'CAMPO DEVE SER [1] (DISPONIVEL) OU [0] (INDISPONIVEL)'
					ROLLBACK
					RETURN
				END
		ELSE
		INSERT INTO tbl_livro VALUES (@titulo,@autor,@ano_publicacao,@genero,@disponivel)
		BEGIN
		PRINT 'INSERIDO COM SUCESSO!!'
		COMMIT
	END



	END
GO



