# Aula 03 – SQL: Criando e Manipulando Dados

## Objetivos

- Compreender a linguagem SQL.
- Criar tabelas.
- Inserir registros.
- Atualizar dados.
- Excluir registros.

---

# O que é SQL?

SQL significa:

Structured Query Language

Linguagem padrão para comunicação com bancos relacionais.

---

# Analogia

Imagine um garçom.

Você faz um pedido.

O garçom leva à cozinha.

A cozinha retorna o resultado.

No banco:

Usuário → SQL → Banco

---

# Categorias SQL

DDL

Criação da estrutura.

DML

Manipulação dos dados.

DQL

Consultas.

DCL

Permissões.

TCL

Transações.

---

# DDL

## CREATE DATABASE

```sql
CREATE DATABASE escola;
```

---

## USE

```sql
USE escola;
```

---

## CREATE TABLE

```sql
CREATE TABLE aluno(
 id INT PRIMARY KEY,
 nome VARCHAR(100),
 idade INT
);
```

---

# Tipos de Dados

INT

VARCHAR

DATE

DECIMAL

BOOLEAN

---

# DML

## INSERT

```sql
INSERT INTO aluno
VALUES
(1,'Ana',17);
```

---

## INSERT múltiplo

```sql
INSERT INTO aluno
VALUES
(1,'Ana',17),
(2,'João',18),
(3,'Maria',19);
```

---

## UPDATE

```sql
UPDATE aluno
SET idade = 20
WHERE id = 1;
```

---

# Atenção

Sem WHERE:

```sql
UPDATE aluno
SET idade = 20;
```

Atualiza TODOS.

---

## DELETE

```sql
DELETE FROM aluno
WHERE id = 1;
```

---

# TRUNCATE

```sql
TRUNCATE TABLE aluno;
```

Diferença:

DELETE → linha por linha

TRUNCATE → limpa tudo rapidamente

---

# AUTO_INCREMENT

```sql
CREATE TABLE aluno(
 id INT AUTO_INCREMENT PRIMARY KEY,
 nome VARCHAR(100)
);
```

---

# Reiniciando contador

```sql
ALTER TABLE aluno
AUTO_INCREMENT = 1;
```

---

# Exercícios

1. Crie tabela Produto.
2. Insira 5 registros.
3. Atualize preços.
4. Apague um produto.

---

# Desafio

Criar banco para academia.

Tabelas:

- Aluno
- Plano
- Professor
