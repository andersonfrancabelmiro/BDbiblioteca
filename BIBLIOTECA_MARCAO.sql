CREATE DATABASE biblioteca_marcao;
GO

USE biblioteca_marcao;
GO

CREATE TABLE tbl_cliente(
		id_cliente		INT IDENTITY PRIMARY KEY,
		nome			VARCHAR(100) NOT NULL,
		telefone		VARCHAR(20) NOT NULL,
		email			VARCHAR (20) NOT NULL
);
GO

CREATE TABLE tbl_livro(
		id_livro		INT IDENTITY PRIMARY KEY,
		titulo			VARCHAR(100)NOT NULL,
		autor			VARCHAR(100) NOT NULL,
		ano_publicacao	INT NOT NULL,
		genero			VARCHAR(50) NOT NULL,
		disponivel		INT NOT NULL -- 1 é disponivel e 0 como ja emprestado
);
GO

CREATE TABLE tbl_emprestimo(
		id_emprestimo	INT IDENTITY PRIMARY KEY,
		data_emprestimo	DATE DEFAULT GETDATE(),
		data_devolucao	DATE NOT NULL,
		id_livrofk		INT,
		id_clientefk	INT,
		FOREIGN KEY (id_livrofk)	REFERENCES tbL_livro	(id_livro),
		FOREIGN KEY (id_clientefk)	REFERENCES tbL_cliente	(id_cliente)
);
