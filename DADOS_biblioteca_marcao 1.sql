USE biblioteca_marcao;

exec P_inserir_livros 'Dom Casmurro', 'Machado de Assis', 1899, 'Romance', 1
exec P_inserir_livros 'O Alquimista', 'Paulo Coelho', 1988, 'Ficção', 1
exec P_inserir_livros 'Capitães da Areia', 'Jorge Amado', 1937, 'Drama', 1
EXEC P_inserir_livros 'A Hora da Estrela', 'Clarice Lispector', 1977, 'Romance', 0
EXEC P_inserir_livros 'Memórias Póstumas de Brás Cubas', 'Machado de Assis', 1881, 'Romance', 0
EXEC P_inserir_livros 'Vidas Secas', 'Graciliano Ramos', 1938, 'Drama', 0
EXEC P_inserir_livros 'Grande Sertão: Veredas', 'João Guimarães Rosa', 1956, 'Romance', 1
EXEC P_inserir_livros 'A Última Hora', 'Jeffrey Archer', 2003, 'Suspense', 1


 
 
EXEC P_inserir_clientes 'Ana Souza', 11912345678, 'ana@email.com'
EXEC P_inserir_clientes 'Bruno Lima', 11923456789, 'bruno@email.com'
EXEC P_inserir_clientes 'Carla Mendes', 11934567890, 'carla@email.com'
EXEC P_inserir_clientes 'Carlass Mendes', 11984578990, 'carla@email.com'

EXEC P_emprestimo 1,11934567890;

EXEC P_registrar_devolucao 1;


SELECT * FROM tbl_livro
SELECT * FROM tbL_cliente
SELECT * FROM tbl_emprestimo 


