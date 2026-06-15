
# Aula 04 - Consultas SQL e JOINs

## Objetivos

- Realizar consultas.
- Utilizar filtros.
- Trabalhar com JOIN.

---

# Filtros

## WHERE

```sql
SELECT *
FROM aluno
WHERE idade >= 18;
```

---

# Ordenação

```sql
SELECT *
FROM aluno
ORDER BY nome;
```

---

# Contagem

```sql
SELECT COUNT(*)
FROM aluno;
```

---

# Analogia para JOIN

Imagine duas listas:

Lista 1

| id | nome |
|----|------|
| 1 | Ana |

Lista 2

| id_cliente | pedido |
|------------|---------|
| 1 | 101 |

O JOIN conecta as informações pelo id.

---

# INNER JOIN

```sql
SELECT c.nome,
       p.id_pedido
FROM cliente c
INNER JOIN pedido p
ON c.id_cliente = p.id_cliente;
```

---

# LEFT JOIN

```sql
SELECT *
FROM cliente c
LEFT JOIN pedido p
ON c.id_cliente = p.id_cliente;
```

---

# SELF JOIN

```sql
SELECT
 f.nome,
 g.nome
FROM funcionario f
LEFT JOIN funcionario g
ON f.gerente_id = g.id;
```

---

# Limpeza de Dados

## DELETE

```sql
DELETE FROM aluno;
```

---

## TRUNCATE

```sql
TRUNCATE TABLE aluno;
```

---

## Reiniciar Auto Increment

```sql
ALTER TABLE aluno
AUTO_INCREMENT = 1;
```

---

# Exercícios

1. Faça um SELECT com WHERE.
2. Faça um ORDER BY.
3. Faça um INNER JOIN.
4. Faça um LEFT JOIN.

---

# Desafio

Monte um banco de Loja Virtual e realize JOINs entre:

- Cliente
- Pedido
- Produto
