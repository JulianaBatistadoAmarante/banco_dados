# Aula 04 – Consultas e Relacionamentos

## Objetivos

- Consultar informações.
- Filtrar registros.
- Ordenar resultados.
- Utilizar JOINs.

---

# SELECT

Recupera informações.

```sql
SELECT * FROM aluno;
```

---

# WHERE

Filtra dados.

```sql
SELECT *
FROM aluno
WHERE idade >= 18;
```

---

# Operadores

=

>

<

>=

<=

<>

---

# LIKE

Busca textual.

```sql
SELECT *
FROM aluno
WHERE nome LIKE 'A%';
```

Começa com A.

---

# ORDER BY

```sql
SELECT *
FROM aluno
ORDER BY nome;
```

---

# COUNT

```sql
SELECT COUNT(*)
FROM aluno;
```

---

# SUM

```sql
SELECT SUM(valor)
FROM pedido;
```

---

# AVG

```sql
SELECT AVG(valor)
FROM pedido;
```

---

# Analogia para JOIN

Imagine duas planilhas.

Planilha Clientes.

Planilha Pedidos.

O JOIN é a "cola" que une as informações.

---

# INNER JOIN

Retorna apenas correspondências.

```sql
SELECT c.nome,
       p.valor
FROM cliente c
INNER JOIN pedido p
ON c.id_cliente = p.id_cliente;
```

---

# LEFT JOIN

Retorna todos da esquerda.

```sql
SELECT *
FROM cliente c
LEFT JOIN pedido p
ON c.id_cliente = p.id_cliente;
```

---

# RIGHT JOIN

Retorna todos da direita.

---

# SELF JOIN

Tabela relacionada com ela mesma.

Funcionário → Gerente

---

# Exercícios

1. Filtre alunos maiores de idade.
2. Faça ordenação por nome.
3. Conte registros.
4. Crie JOIN entre Cliente e Pedido.

---

# Desafio

Montar consultas para sistema de biblioteca.
