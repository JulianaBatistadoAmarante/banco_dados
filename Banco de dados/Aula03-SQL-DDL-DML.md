# Aula 03 – SQL: Criando e Manipulando Dados (DDL e DML)

## Objetivos

Ao final desta aula você será capaz de:

- Compreender o que é SQL.
- Entender as categorias da linguagem SQL.
- Criar bancos de dados e tabelas.
- Definir chaves primárias.
- Inserir, atualizar e excluir registros.
- Compreender o conceito de AUTO_INCREMENT.
- Entender a diferença entre DELETE, TRUNCATE e DROP.
- Aplicar boas práticas na criação de tabelas.

---

# Introdução

Nas aulas anteriores aprendemos:

- O que é um banco de dados.
- Como modelar entidades e relacionamentos.
- O que são PKs e FKs.

Agora chegou o momento de transformar a modelagem em um banco de dados real.

Para isso utilizaremos SQL.

---

# O que é SQL?

SQL significa:

**Structured Query Language**

(Linguagem Estruturada de Consulta)

É a linguagem utilizada para conversar com bancos de dados relacionais.

Por meio dela podemos:

- Criar bancos
- Criar tabelas
- Inserir dados
- Alterar dados
- Excluir dados
- Consultar informações

---

# Analogia: Restaurante

Imagine um restaurante.

O cliente faz um pedido:

```text
Quero uma pizza.
```

A cozinha prepara o pedido.

Depois entrega o resultado.

No banco de dados ocorre algo semelhante.

```text
Usuário
   ↓
SQL
   ↓
Banco de Dados
   ↓
Resultado
```

O SQL é a linguagem utilizada para fazer pedidos ao banco.

---

# Categorias da Linguagem SQL

A linguagem SQL é dividida em grupos.

---

# DDL

Data Definition Language

Responsável por definir estruturas.

Exemplos:

- CREATE
- ALTER
- DROP

---

# DML

Data Manipulation Language

Responsável por manipular dados.

Exemplos:

- INSERT
- UPDATE
- DELETE

---

# DQL

Data Query Language

Responsável pelas consultas.

Exemplo:

- SELECT

---

# DCL

Data Control Language

Responsável por permissões.

Exemplos:

- GRANT
- REVOKE

---

# TCL

Transaction Control Language

Responsável por transações.

Exemplos:

- COMMIT
- ROLLBACK

---

# Criando um Banco de Dados

## CREATE DATABASE

Cria um novo banco.

```sql
CREATE DATABASE escola;
```

---

# Utilizando um Banco

## USE

Seleciona qual banco será utilizado.

```sql
USE escola;
```

A partir desse momento os comandos serão executados dentro do banco escolhido.

---

# Criando uma Tabela

## CREATE TABLE

Cria uma nova tabela.

```sql
CREATE TABLE aluno (
    id INT,
    nome VARCHAR(100),
    idade INT
);
```

---

# Entendendo a Estrutura

```sql
CREATE TABLE aluno (
    id INT,
    nome VARCHAR(100),
    idade INT
);
```

---

## id

```sql
id INT
```

Armazena números inteiros.

Exemplos:

```text
1
2
3
```

---

## nome

```sql
nome VARCHAR(100)
```

Armazena texto.

Até 100 caracteres.

---

## idade

```sql
idade INT
```

Armazena números inteiros.

---

# Tipos de Dados Mais Utilizados

## INT

Números inteiros.

```sql
idade INT
```

---

## VARCHAR

Textos.

```sql
nome VARCHAR(100)
```

---

## DATE

Datas.

```sql
data_nascimento DATE
```

---

## DECIMAL

Valores monetários.

```sql
preco DECIMAL(10,2)
```

Exemplos:

```text
10.50
99.99
1500.00
```

---

## BOOLEAN

Valores verdadeiro ou falso.

```sql
ativo BOOLEAN
```

---

# Chave Primária

Uma tabela deve possuir um identificador único.

Exemplo:

```sql
CREATE TABLE aluno (
    id INT PRIMARY KEY,
    nome VARCHAR(100)
);
```

---

# O que é PRIMARY KEY?

A chave primária:

✔ Não pode repetir

✔ Não pode ser nula

✔ Identifica um registro único

---

# Problema Sem Chave Primária

Imagine:

| id | nome |
|----|------|
| 1 | Ana |
| 1 | João |

Qual dos dois registros é o correto?

Não sabemos.

Por isso utilizamos PK.

---

# AUTO_INCREMENT

Faz o banco gerar o identificador automaticamente.

```sql
CREATE TABLE aluno (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100)
);
```

---

# Exemplo

Ao inserir:

```sql
INSERT INTO aluno(nome)
VALUES ('Ana');
```

O banco gera:

| id | nome |
|----|------|
| 1 | Ana |

---

# Inserindo Dados

## INSERT INTO

Adiciona registros.

```sql
INSERT INTO aluno
VALUES
(1,'Ana',17);
```

---

# O que aconteceu?

Foi criado um novo registro.

| id | nome | idade |
|----|------|--------|
| 1 | Ana | 17 |

---

# Inserindo Vários Registros

```sql
INSERT INTO aluno
VALUES
(1,'Ana',17),
(2,'João',18),
(3,'Maria',19);
```

---

# Forma Recomendada

Especificar colunas.

```sql
INSERT INTO aluno
(nome, idade)
VALUES
('Ana',17);
```

Vantagem:

Se a estrutura mudar, o código continua funcionando.

---

# Atualizando Dados

## UPDATE

Modifica registros existentes.

```sql
UPDATE aluno
SET idade = 18
WHERE id = 1;
```

---

# Entendendo o Comando

```sql
UPDATE aluno
```

Tabela que será alterada.

---

```sql
SET idade = 18
```

Novo valor.

---

```sql
WHERE id = 1
```

Qual registro será alterado.

---

# Cuidado!

Observe:

```sql
UPDATE aluno
SET idade = 18;
```

Sem WHERE.

Resultado:

TODOS os registros serão atualizados.

---

# Excluindo Registros

## DELETE

Remove registros.

```sql
DELETE FROM aluno
WHERE id = 1;
```

---

# O que aconteceu?

Apenas o aluno de id 1 foi removido.

---

# Cuidado com DELETE

Observe:

```sql
DELETE FROM aluno;
```

Sem WHERE.

Resultado:

Todos os registros serão apagados.

---

# Limpando uma Tabela

## TRUNCATE

Remove todos os registros rapidamente.

```sql
TRUNCATE TABLE aluno;
```

---

# Diferença Entre DELETE e TRUNCATE

| DELETE | TRUNCATE |
|----------|----------|
| Remove linha por linha | Remove tudo de uma vez |
| Pode usar WHERE | Não usa WHERE |
| Mais lento | Mais rápido |
| Mantém AUTO_INCREMENT | Reinicia AUTO_INCREMENT |

---

# Removendo uma Tabela

## DROP TABLE

Remove completamente a tabela.

```sql
DROP TABLE aluno;
```

---

# Antes

```text
Banco
 └── aluno
```

---

# Depois

```text
Banco
```

A tabela deixa de existir.

---

# Alterando Estruturas

## ALTER TABLE

Modifica uma tabela existente.

---

# Adicionar Coluna

```sql
ALTER TABLE aluno
ADD email VARCHAR(100);
```

---

# Remover Coluna

```sql
ALTER TABLE aluno
DROP COLUMN email;
```

---

# Renomear Coluna (MySQL 8)

```sql
ALTER TABLE aluno
RENAME COLUMN nome TO nome_completo;
```

---

# Reiniciando AUTO_INCREMENT

```sql
ALTER TABLE aluno
AUTO_INCREMENT = 1;
```

Muito utilizado após testes.

---

# Exemplo Completo

Criando tabela:

```sql
CREATE TABLE produto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10,2)
);
```

---

Inserindo registros:

```sql
INSERT INTO produto(nome, preco)
VALUES
('Notebook',3500.00),
('Mouse',80.00),
('Teclado',150.00);
```

---

Atualizando:

```sql
UPDATE produto
SET preco = 90.00
WHERE id = 2;
```

---

Removendo:

```sql
DELETE FROM produto
WHERE id = 3;
```

---

# Boas Práticas

✔ Sempre utilize PRIMARY KEY

✔ Utilize AUTO_INCREMENT quando possível

✔ Sempre teste UPDATE e DELETE com WHERE

✔ Nomeie tabelas e colunas claramente

✔ Faça backup antes de alterações críticas

---

# Erros Comuns

❌ Esquecer WHERE

❌ Não criar PK

❌ Utilizar tipos inadequados

❌ Apagar tabelas por engano

❌ Inserir dados duplicados

---

# Resumo da Aula

Aprendemos:

✔ CREATE DATABASE

✔ USE

✔ CREATE TABLE

✔ PRIMARY KEY

✔ AUTO_INCREMENT

✔ INSERT

✔ UPDATE

✔ DELETE

✔ TRUNCATE

✔ DROP

✔ ALTER TABLE

---

# Exercícios de Fixação

## Questão 1

Qual a função do CREATE DATABASE?

---

## Questão 2

Qual a diferença entre DELETE e TRUNCATE?

---

## Questão 3

O que é uma PRIMARY KEY?

---

## Questão 4

Qual a função do AUTO_INCREMENT?

---

## Questão 5

Explique o papel do WHERE em UPDATE e DELETE.

---

# Exercício Prático

Crie uma tabela chamada PROFESSOR contendo:

- id
- nome
- email
- salario

Insira pelo menos 5 registros.

Realize:

- uma atualização
- uma exclusão
- um ALTER TABLE adicionando telefone

---

# Desafio

Modele e implemente o banco de uma biblioteca contendo:

- Livro
- Autor
- Categoria

Crie os scripts SQL necessários para:

1. Criar as tabelas.
2. Inserir dados.
3. Atualizar registros.
4. Excluir registros.
