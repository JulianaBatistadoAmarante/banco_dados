# Aula 01 – Fundamentos de Banco de Dados Relacional

## Objetivos

Ao final desta aula você será capaz de:

- Entender a importância dos bancos de dados nos sistemas modernos.
- Diferenciar dados, informação e conhecimento.
- Compreender o conceito de persistência de dados.
- Identificar tabelas, registros e atributos.
- Entender o funcionamento básico de um SGBD.

---

# Introdução

Você já se perguntou onde ficam armazenadas as mensagens do WhatsApp?

E as músicas do Spotify?

E os vídeos curtidos no YouTube?

Todos esses sistemas armazenam milhões ou até bilhões de informações diariamente.

Essas informações precisam ser:

- organizadas
- protegidas
- atualizadas
- recuperadas rapidamente

É justamente para isso que existem os Bancos de Dados.

---

# O Problema do Armazenamento

Imagine uma escola com:

- 2.000 alunos
- 150 professores
- 80 turmas

Agora imagine controlar tudo em papel.

Problemas:

- perda de documentos
- dificuldade de consulta
- duplicidade de informações
- erros de preenchimento

O banco de dados surgiu para resolver esse problema.

---

# Dados x Informação x Conhecimento

## Dados

São valores isolados.

Exemplos:

```text
Karize
53
Blumenau
```

Sozinhos não possuem significado completo.

---

## Informação

Dados organizados.

| Nome | Idade | Cidade |
|--------|--------|---------|
| Karize | 53 | Blumenau |

Agora conseguimos interpretar os dados.

---

## Conhecimento

É a capacidade de tomar decisões utilizando a informação.

Exemplo:

"A maioria dos alunos que faltam mais de 25% das aulas acaba reprovando."

---

# Analogia: Biblioteca

Imagine uma biblioteca.

A biblioteca inteira representa o Banco de Dados.

As estantes representam as Tabelas.

Os livros representam os Registros.

As informações da capa representam os Campos.

| Biblioteca | Banco de Dados |
|------------|---------------|
| Estante | Tabela |
| Livro | Registro |
| Título do livro | Campo |
| Biblioteca inteira | Banco |

---

# O que é um Banco de Dados?

Definição:

Coleção organizada de informações que podem ser armazenadas, recuperadas e manipuladas eletronicamente.

---

# O que é um SGBD?

SGBD significa:

Sistema Gerenciador de Banco de Dados.

É o software responsável por controlar o banco.

Exemplos de SGBDs:

- MySQL
- PostgreSQL
- SQL Server
- Oracle
- MariaDB

---

# Analogia: Restaurante

Imagine um restaurante.

O cliente faz um pedido.

O garçom leva o pedido para a cozinha.

A cozinha prepara a refeição.

O garçom entrega ao cliente.

No banco:

Usuário → Sistema → SGBD → Banco de Dados

O SGBD funciona como o garçom.

---

# Estrutura de uma Tabela

Tabela ALUNO

| id | nome | idade |
|----|------|--------|
| 1 | Ana | 17 |
| 2 | João | 18 |
| 3 | Maria | 19 |

---

# Campos (Colunas)

Representam características.

```text
id
nome
idade
```

Cada coluna possui um tipo de dado.

---

# Registros (Linhas)

Representam uma ocorrência.

```text
1 | Ana | 17
```

Cada linha representa um aluno.

---

# Tipos de Dados

## Inteiro

```text
10
25
300
```

---

## Texto

```text
Ana
Carlos
Maria
```

---

## Data

```text
2026-06-15
```

---

## Decimal

```text
10.50
25.99
```

---

# Boas Práticas

✔ Cada tabela deve representar apenas um assunto.

✔ Evitar repetir informações.

✔ Definir nomes claros.

✔ Utilizar identificadores únicos.

---

# Erros Comuns

❌ Colocar telefone1, telefone2, telefone3

❌ Misturar informações de alunos e professores na mesma tabela

❌ Não utilizar identificador único

---

# Onde os Bancos de Dados são Utilizados?

- Bancos
- Hospitais
- Escolas
- Redes Sociais
- Sistemas ERP
- Aplicativos de Delivery
- Streaming

Praticamente qualquer sistema moderno utiliza banco de dados.

---

# Curiosidade

O Facebook armazena vários petabytes de dados.

1 Petabyte ≈ 1.000 Terabytes.

---

# Exercícios de Fixação

1. Explique a diferença entre dado e informação.

2. O que é um SGBD?

3. Cite três exemplos de bancos de dados.

4. Qual a diferença entre campo e registro?

5. O que acontece se uma empresa não possuir um banco de dados organizado?

---

# Exercício Prático

Modele uma tabela para armazenar:

- Filmes
- Jogos
- Livros

Defina:

- Identificador
- Nome
- Categoria
- Ano

---

# Desafio

Uma clínica deseja armazenar:

- pacientes
- médicos
- consultas

Liste quais tabelas você criaria e quais informações armazenaria em cada uma.
