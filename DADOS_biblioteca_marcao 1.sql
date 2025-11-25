USE biblioteca_marcao;

exec P_inserir_livros'Dom Casmurro', 'Machado de Assis', 1899, 'Romance', 1
exec P_inserir_livros'O Alquimista', 'Paulo Coelho', 1988, 'Ficção', 1
exec P_inserir_livros'Capitães da Areia', 'Jorge Amado', 1937, 'Drama', 1
EXEC P_inserir_livros 'A Hora da Estrela', 'Clarice Lispector', 1977, 'Romance', 0
EXEC P_inserir_livros 'Memórias Póstumas de Brás Cubas', 'Machado de Assis', 1881, 'Romance', 0
EXEC P_inserir_livros 'Vidas Secas', 'Graciliano Ramos', 1938, 'Drama', 0
EXEC P_inserir_livros 'Grande Sertão: Veredas', 'João Guimarães Rosa', 1956, 'Romance', 1

 
 
EXEC P_inserir_clientes 'Ana Souza', '(11) 91234-5678', 'ana@email.com'
EXEC P_inserir_clientes 'Bruno Lima', '(11) 92345-6789', 'bruno@email.com'
EXEC P_inserir_clientes 'Carla Mendes', '(11) 93456-7890', 'carla@email.com'

EXEC P_emprestimo 1,2;

EXEC P_registrar_devolucao 7;


SELECT * FROM tbl_livro
SELECT * FROM tbL_cliente
SELECT * FROM tbl_emprestimo

DROP TABLE tbl_livro
DROP TABLE tbl_cliente

DELETE FROM tbl_emprestimo WHERE id_emprestimo = 2;

