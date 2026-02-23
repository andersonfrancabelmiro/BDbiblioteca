# 📚 Banco de Dados da Biblioteca

Este repositório contém o banco de dados completo para gerenciamento de uma biblioteca, com tabelas, dados e procedimentos SQL.

---

## 📦 O que tem neste projeto

O projeto inclui:

### 🗄 Scripts de Criação
- `BIBLIOTECA_MARCAO.sql` – Script principal com definição das tabelas  
- `DADOS_biblioteca_marcao 1.sql` – Dados de teste inseridos nas tabelas

### 🧠 Stored Procedures (Procedimentos)
- `P_emprestimo.sql` – Procedimento para registrar empréstimos  
- `P_inserir_clientes.sql` – Procedimento para inserir clientes  
- `P_inserir_livros.sql` – Procedimento para inserir livros  
- `P_livro_disponivel.sql` – Procedimento para verificar livros disponíveis  
- `P_registrar_devolucao.sql` – Procedimento para registrar devolução

### 🛡 Triggers
- `T_evitar_erro.sql` – Trigger para prevenir erros ou inconsistências

---

## 🗂 Estrutura do banco

O banco contém tabelas como:

- **Tabelas de dados principais**
  - Usuários / Clientes
  - Livros
  - Empréstimos

- **Regras de integridade**
  - Chaves primárias (identificadores únicos)
  - Chaves estrangeiras (relacionando tabelas corretamente)

Isso garante que os dados fiquem consistentes no banco relacional.

---

## 🔍 Conceitos aplicados

O projeto demonstra:

✔ Modelagem relacional  
✔ Uso de SQL para criar estruturas  
✔ Armazenar dados com scripts separados  
✔ Automação de regras com *stored procedures*  
✔ Controle de comportamento com *triggers*

---

## 🛠 Tecnologias

- Linguagem: **SQL**
- Tipo: Banco de dados relacional  
- Pode ser executado em SGBDs que suportem SQL padrão (como *MySQL*, *MariaDB*, etc.)

---

## 💡 Para rodar o projeto

1. Abra seu SGBD (ex: :contentReference[oaicite:0]{index=0})  
2. Crie um banco com um nome de sua escolha  
3. Importe o script `BIBLIOTECA_MARCAO.sql`  
4. Importe também os outros scripts para popular e adicionar regras  
5. Teste os procedimentos conforme necessidade

---

## 🚀 O que esse projeto demonstra

Esse projeto mostra que você sabe:

✅ Modelar um banco relacional  
✅ Criar tabelas e relacionamentos  
✅ Usar procedures para lógica de banco  
✅ Utilizar triggers para regras de negócio

---

**Desenvolvido por Anderson Belmiro**
