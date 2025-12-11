USE biblioteca_marcao;

exec P_inserir_livros 'Dom Casmurro', 'Machado de Assis', 1899, 'Romance',1
exec P_inserir_livros 'O Alquimista', 'Paulo Coelho', 1988, 'Ficção', 1
exec P_inserir_livros 'Capitães da Areia', 'Jorge Amado', 1937, 'Drama', 1
EXEC P_inserir_livros 'A Hora da Estrela', 'Clarice Lispector', 1977, 'Romance', 0
EXEC P_inserir_livros 'Memórias Póstumas de Brás Cubas', 'Machado de Assis', 1881, 'Romance', 1




 
 
EXEC P_inserir_clientes 'Gabriel', 11996820046, 'ader@gmail.com'
EXEC P_inserir_clientes 'Bruno Lima', 11123456789, ''
EXEC P_inserir_clientes 'Carla Mendes', 11934567890, 'carla@email.com'
EXEC P_inserir_clientes 'Carlass Mendes', 11111111111, 'carla@email.com'
EXEC P_inserir_clientes 'Anderson de França Belmiro',11984578985, 'andersom@email.com'

EXEC P_emprestimo 0,11934567890;

EXEC P_registrar_devolucao 1;


SELECT * FROM tbl_livro
SELECT * FROM tbL_cliente
SELECT * FROM tbl_emprestimo 

delete tbl_cliente
