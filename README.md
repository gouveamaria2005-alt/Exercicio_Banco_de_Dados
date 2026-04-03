# Exercicio_Banco_de_Dados
SQL
# 📚 Sistema de Empréstimo de Livros

Este projeto consiste na criação de um banco de dados simples para controle de empréstimos de livros em uma biblioteca escolar. O sistema permite cadastrar leitores, livros e registrar empréstimos, além de realizar consultas, atualizações e exclusões.

---

## 🗂️ Estrutura do Banco de Dados

O banco de dados criado chama-se:
'emprestimo_livros'


Ele possui três tabelas principais:

### 👤 Tabela `leitor`
Armazena os dados dos leitores cadastrados.

Campos:
- `id_leitor` (PK) – Identificador único
- `nome` – Nome do leitor
- `telefone` – Telefone do leitor
- `email` – Email do leitor

---

### 📖 Tabela `livro`
Armazena os dados dos livros disponíveis.

Campos:
- `id_livro` (PK) – Identificador único
- `titulo` – Título do livro
- `autor` – Autor do livro
- `ano` – Ano de publicação

---

### 🔄 Tabela `emprestimo`
Registra os empréstimos realizados.

Campos:
- `id_emprestimo` (PK) – Identificador único
- `data_emprestimo` – Data do empréstimo
- `data_devolucao` – Data prevista de devolução
- `status` – Situação do empréstimo (`emprestado` ou `devolvido`)
- `fk_id_leitor` – Chave estrangeira para leitor
- `fk_id_livro` – Chave estrangeira para livro

Relacionamentos:
- Um leitor pode ter vários empréstimos
- Um livro pode estar em vários empréstimos ao longo do tempo

---

## 🧪 Dados de Teste

O script inclui inserções iniciais para:
- 5 leitores
- 5 livros
- 8 registros de empréstimos

Esses dados permitem testar rapidamente as consultas e operações.

---

## 🔍 Consultas Implementadas

O sistema possui consultas para:

- Listar todos os leitores cadastrados
- Listar todos os livros cadastrados
- Listar todos os empréstimos realizados
- Exibir nome do leitor e título do livro em cada empréstimo
- Mostrar empréstimos ainda não devolvidos
- Mostrar quem está com livros emprestados

---

## ✏️ Atualizações

Operações de atualização incluídas:

- Atualizar telefone ou email de um leitor
- Atualizar data de devolução e status de um empréstimo

---

## 🗑️ Exclusões

O script permite:

- Excluir um empréstimo específico
- Excluir um leitor ou livro respeitando integridade referencial
- Excluir primeiro os empréstimos antes de remover um leitor

---

## ▶️ Como Executar

1. Abra seu SGBD (MySQL Workbench, phpMyAdmin, etc.)
2. Execute o script SQL completo
3. O banco será criado automaticamente
4. As tabelas e dados serão inseridos
5. As consultas podem ser executadas individualmente

---

## 🎯 Objetivo do Projeto

Este banco de dados demonstra:

- Criação de database
- Criação de tabelas com chaves primárias e estrangeiras
- Inserção de dados
- Consultas com JOIN
- Atualizações (UPDATE)
- Exclusões (DELETE)
- Integridade referencial

---

## 🛠️ Tecnologias Utilizadas

- SQL
- MySQL
