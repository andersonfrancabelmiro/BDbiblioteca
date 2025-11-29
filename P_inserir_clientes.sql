USE biblioteca_marcao;
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
	BEGIN TRAN
	
	IF EXISTS
	(SELECT * FROM tbl_cliente WHERE @telefone = telefone)
			BEGIN
					PRINT'CLIENTE JA CADASTRADO'
					ROLLBACK	
			END
			
	ELSE IF EXISTS
		(SELECT * FROM tbl_cliente WHERE @telefone <> telefone)
		BEGIN
		INSERT INTO tbl_cliente VALUES (@nome,@telefone,@email)
			PRINT 'INSERIDO COM SUCESSO!'
			COMMIT
		END
END
GO