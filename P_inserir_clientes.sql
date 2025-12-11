USE biblioteca_marcao;
GO

ALTER PROCEDURE P_inserir_clientes
(
    @nome VARCHAR(100),
    @telefone BIGINT,
    @email VARCHAR(20)
)
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRAN;

    IF LEN(@telefone) <> 11
    BEGIN
        PRINT('O telefone deve conter exatamente 11 dígitos.');
        ROLLBACK;
        RETURN;     
    END

 
    IF (@nome = '' OR @email = '')
    BEGIN
        PRINT('CAMPO NAO PODE SER NULO');
        ROLLBACK;
        RETURN;     
    END


    IF EXISTS (SELECT 1 FROM tbl_cliente WHERE telefone = @telefone)
    BEGIN
        PRINT('CLIENTE JA CADASTRADO');
        ROLLBACK;
        RETURN;    
    END


    INSERT INTO tbl_cliente VALUES (@nome, @telefone, @email);
    PRINT('INSERIDO COM SUCESSO!');
    COMMIT;
END
GO
