
# Aula 03 - SQL Básico (DDL e DML)

## Objetivos

- Criar tabelas.
- Inserir dados.
- Atualizar registros.
- Excluir registros.

---

# O que é SQL?

SQL significa:

Structured Query Language

Linguagem utilizada para conversar com o banco de dados.

---

# DDL

Data Definition Language

Define estruturas.

## CREATE

```sql
CREATE TABLE aluno(
 id INT PRIMARY KEY,
 nome VARCHAR(100),
 idade INT
);
```

## ALTER

```sql
ALTER TABLE aluno
ADD cidade VARCHAR(100);
```

## DROP

```sql
DROP TABLE aluno;
```

---

# DML

Manipula dados.

## INSERT

```sql
INSERT INTO aluno
VALUES(1,'Ana',17);
```

## SELECT

```sql
SELECT * FROM aluno;
```

## UPDATE

```sql
UPDATE aluno
SET idade = 18
WHERE id = 1;
```

## DELETE

```sql
DELETE FROM aluno
WHERE id = 1;
```

---

# Analogia

Tabela = Planilha Excel

INSERT = Adicionar linha

UPDATE = Editar linha

DELETE = Apagar linha

---

# Exercícios

1. Crie uma tabela Produto.
2. Insira 3 produtos.
3. Atualize um preço.
4. Exclua um produto.

---

# Desafio

Criar uma tabela Funcionário com:

- id
- nome
- salário
- setor
