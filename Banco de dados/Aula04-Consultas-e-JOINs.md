# Aula 04 – Consultas SQL e JOINs

## Objetivos

Ao final desta aula você será capaz de:

- Consultar informações armazenadas no banco.
- Filtrar registros.
- Ordenar resultados.
- Utilizar funções de agregação.
- Relacionar tabelas utilizando JOINs.
- Interpretar resultados de consultas SQL.

---

# O que é uma Consulta?

Uma consulta é uma pergunta feita ao banco de dados.

Por exemplo:

- Quais alunos estão cadastrados?
- Quantos clientes existem?
- Qual produto é o mais caro?
- Quem realizou pedidos este mês?

A linguagem SQL permite fazer essas perguntas.

---

# SELECT

O comando SELECT é utilizado para consultar dados.

Sintaxe:

```sql
SELECT coluna
FROM tabela;
```

Exemplo:

```sql
SELECT nome
FROM aluno;
```

Resultado:

| nome |
|--------|
| Ana |
| João |
| Maria |

---

# SELECT *

O asterisco (*) significa:

"traga todas as colunas"

Exemplo:

```sql
SELECT *
FROM aluno;
```

Resultado:

| id | nome | idade |
|----|------|--------|
| 1 | Ana | 17 |
| 2 | João | 18 |

---

# Boas Práticas

Evite usar:

```sql
SELECT *
```

em sistemas reais.

Prefira:

```sql
SELECT nome, idade
FROM aluno;
```

Isso reduz o volume de dados retornados.

---

# WHERE

O WHERE funciona como um filtro.

Sem WHERE:

```sql
SELECT *
FROM aluno;
```

Retorna todos os alunos.

Com WHERE:

```sql
SELECT *
FROM aluno
WHERE idade >= 18;
```

Retorna apenas alunos maiores de idade.

---

# Operadores de Comparação

## Igual

```sql
WHERE idade = 18
```

---

## Diferente

```sql
WHERE idade <> 18
```

ou

```sql
WHERE idade != 18
```

---

## Maior

```sql
WHERE idade > 18
```

---

## Menor

```sql
WHERE idade < 18
```

---

## Maior ou Igual

```sql
WHERE idade >= 18
```

---

## Menor ou Igual

```sql
WHERE idade <= 18
```

---

# AND

Permite combinar condições.

Exemplo:

```sql
SELECT *
FROM aluno
WHERE idade >= 18
AND cidade = 'Blumenau';
```

O aluno precisa atender às DUAS condições.

---

# OR

Permite atender uma condição OU outra.

```sql
SELECT *
FROM aluno
WHERE cidade = 'Blumenau'
OR cidade = 'Gaspar';
```

---

# IN

Substitui vários OR.

Em vez de:

```sql
WHERE cidade='Blumenau'
OR cidade='Gaspar'
OR cidade='Indaial'
```

Podemos fazer:

```sql
WHERE cidade IN
('Blumenau','Gaspar','Indaial')
```

---

# BETWEEN

Usado para intervalos.

```sql
SELECT *
FROM produto
WHERE preco BETWEEN 100 AND 500;
```

Retorna produtos entre 100 e 500.

---

# LIKE

Utilizado para buscas textuais.

---

## Começa com

```sql
WHERE nome LIKE 'A%'
```

Exemplos encontrados:

Ana

André

Amanda

---

## Termina com

```sql
WHERE nome LIKE '%a'
```

Exemplos:

Maria

Julia

Bianca

---

## Contém

```sql
WHERE nome LIKE '%an%'
```

Exemplos:

Ana

Anderson

Fernando

---

# ORDER BY

Ordena resultados.

---

## Crescente

```sql
SELECT *
FROM aluno
ORDER BY nome ASC;
```

ASC = Ascendente

A → Z

---

## Decrescente

```sql
SELECT *
FROM aluno
ORDER BY nome DESC;
```

DESC = Descendente

Z → A

---

# LIMIT

Limita quantidade de registros.

```sql
SELECT *
FROM aluno
LIMIT 5;
```

Retorna apenas 5 registros.

Muito utilizado em:

- Paginação
- Dashboards
- Relatórios

---

# COUNT

Conta registros.

```sql
SELECT COUNT(*)
FROM aluno;
```

Resultado:

```text
35
```

Significa:

Existem 35 alunos cadastrados.

---

# SUM

Soma valores.

```sql
SELECT SUM(valor)
FROM pedido;
```

Resultado:

```text
15000
```

Soma de todos os pedidos.

---

# AVG

Calcula média.

```sql
SELECT AVG(valor)
FROM pedido;
```

Resultado:

```text
375
```

Valor médio dos pedidos.

---

# MAX

Retorna maior valor.

```sql
SELECT MAX(valor)
FROM pedido;
```

---

# MIN

Retorna menor valor.

```sql
SELECT MIN(valor)
FROM pedido;
```

---

# GROUP BY

Agrupa registros.

Exemplo:

Quantidade de alunos por cidade.

```sql
SELECT cidade,
       COUNT(*)
FROM aluno
GROUP BY cidade;
```

Resultado:

| cidade | quantidade |
|----------|----------|
| Blumenau | 15 |
| Gaspar | 8 |
| Indaial | 12 |

---

# HAVING

Filtra grupos.

```sql
SELECT cidade,
       COUNT(*)
FROM aluno
GROUP BY cidade
HAVING COUNT(*) > 10;
```

Retorna apenas cidades com mais de 10 alunos.

---

# Introdução aos JOINs

Imagine duas planilhas.

CLIENTE

| id | nome |
|----|------|
| 1 | Ana |
| 2 | João |

PEDIDO

| id | id_cliente | valor |
|----|------------|--------|
| 101 | 1 | 500 |
| 102 | 2 | 300 |

Como descobrir quem realizou cada pedido?

Utilizamos JOIN.

---

# INNER JOIN

Retorna apenas registros com correspondência.

```sql
SELECT
    c.nome,
    p.id,
    p.valor
FROM cliente c
INNER JOIN pedido p
ON c.id = p.id_cliente;
```

Resultado:

| nome | pedido | valor |
|--------|---------|---------|
| Ana | 101 | 500 |
| João | 102 | 300 |

---

# LEFT JOIN

Retorna TODOS da tabela da esquerda.

Mesmo sem pedidos.

```sql
SELECT *
FROM cliente c
LEFT JOIN pedido p
ON c.id = p.id_cliente;
```

---

# Exemplo

CLIENTE

| id | nome |
|----|------|
| 1 | Ana |
| 2 | João |
| 3 | Maria |

PEDIDO

| id | cliente |
|----|----------|
| 101 | 1 |

Resultado:

| nome | pedido |
|--------|---------|
| Ana | 101 |
| João | NULL |
| Maria | NULL |

---

# RIGHT JOIN

Retorna todos da tabela da direita.

Menos utilizado no mercado.

---

# SELF JOIN

Quando uma tabela se relaciona consigo mesma.

Exemplo:

Funcionários e seus gerentes.

```sql
SELECT
    f.nome AS funcionario,
    g.nome AS gerente
FROM funcionario f
LEFT JOIN funcionario g
ON f.gerente_id = g.id;
```

---

# Resumo

| Comando | Função |
|----------|---------|
| SELECT | Consultar |
| WHERE | Filtrar |
| AND | Duas condições |
| OR | Uma condição |
| IN | Lista de valores |
| BETWEEN | Intervalo |
| LIKE | Busca textual |
| ORDER BY | Ordenar |
| LIMIT | Limitar resultados |
| COUNT | Contar |
| SUM | Somar |
| AVG | Média |
| MAX | Maior valor |
| MIN | Menor valor |
| GROUP BY | Agrupar |
| HAVING | Filtrar grupos |
| INNER JOIN | Correspondências |
| LEFT JOIN | Todos da esquerda |
| RIGHT JOIN | Todos da direita |
| SELF JOIN | Auto relacionamento |

---

# Desafio

Crie as tabelas:

Cliente
Pedido
Produto
ItemPedido

Monte consultas utilizando:

- WHERE
- LIKE
- COUNT
- SUM
- GROUP BY
- INNER JOIN
- LEFT JOIN

e interprete os resultados.
