# Aula 02 – Modelagem de Dados, MER e Normalização

## Objetivos

Ao final desta aula você será capaz de:

- Entender a importância da modelagem de dados.
- Identificar entidades, atributos e relacionamentos.
- Construir Diagramas Entidade-Relacionamento (MER).
- Compreender cardinalidades.
- Identificar chaves primárias e estrangeiras.
- Entender os problemas causados pela redundância.
- Conhecer os conceitos básicos de normalização.

---

# Introdução

Na aula anterior aprendemos o que é um banco de dados.

Mas surge uma pergunta importante:

> Como sabemos quais tabelas criar?

A resposta está na modelagem de dados.

Antes de criar qualquer tabela em SQL, precisamos planejar a estrutura do banco.

É exatamente para isso que utilizamos a modelagem.

---

# Analogia: Construindo uma Casa

Imagine que você deseja construir uma casa.

Você começaria comprando tijolos sem um projeto?

Provavelmente não.

Primeiro é necessário:

- Fazer a planta
- Definir os cômodos
- Planejar a instalação elétrica
- Planejar a hidráulica

Somente depois a construção começa.

Com banco de dados ocorre exatamente o mesmo.

| Construção Civil | Banco de Dados |
|-----------------|---------------|
| Planta | Modelagem |
| Engenheiro | Analista de Sistemas |
| Pedreiro | Desenvolvedor |
| Casa | Banco de Dados |

---

# O que é Modelagem de Dados?

Modelagem de dados é o processo de representar graficamente as informações que serão armazenadas em um sistema.

O objetivo é:

✔ Organizar os dados

✔ Evitar redundâncias

✔ Facilitar manutenção

✔ Melhorar desempenho

✔ Reduzir erros

---

# Exemplo de Problema

Imagine um sistema escolar.

Se não houver planejamento podemos criar algo assim:

| Aluno | Curso | Professor |
|---------|---------|------------|
| Ana | Java | Carlos |
| Ana | Banco de Dados | Carlos |
| Ana | Python | Roberto |

Observe:

O nome da Ana está sendo repetido várias vezes.

Isso gera desperdício e aumenta a chance de inconsistências.

---

# O que é uma Entidade?

Uma entidade representa algo do mundo real que desejamos armazenar.

Exemplos:

- Aluno
- Professor
- Curso
- Produto
- Cliente
- Pedido

---

# Como Identificar Entidades?

Uma dica simples:

Procure pelos substantivos do problema.

Exemplo:

"O sistema deve armazenar alunos, cursos e professores."

Substantivos:

- aluno
- curso
- professor

Provavelmente serão entidades.

---

# O que NÃO é uma Entidade?

Muitos iniciantes confundem atributos com entidades.

Exemplo:

ALUNO

- nome
- idade
- telefone

Nome NÃO é entidade.

Nome é atributo.

---

# O que é um Atributo?

Atributos são características de uma entidade.

---

## Exemplo

Entidade:

ALUNO

Atributos:

- id_aluno
- nome
- email
- telefone
- data_nascimento

---

# Tipos de Atributos

## Atributo Simples

Não pode ser dividido.

Exemplos:

- CPF
- Nome
- Idade

---

## Atributo Composto

Pode ser dividido em partes menores.

Exemplo:

ENDEREÇO

Pode ser dividido em:

- Rua
- Número
- Bairro
- Cidade
- CEP

---

## Atributo Multivalorado

Possui vários valores.

Exemplo:

Telefones

```text
(47)99999-1111
(47)98888-2222
```

---

# O que é um Relacionamento?

Relacionamento representa uma associação entre entidades.

---

## Exemplo

CLIENTE faz PEDIDO

```text
CLIENTE ------ PEDIDO
```

---

## Exemplo Escolar

ALUNO realiza MATRÍCULA

```text
ALUNO ------ MATRÍCULA
```

---

# Cardinalidades

Cardinalidade define quantas ocorrências de uma entidade podem se relacionar com outra.

É uma das partes mais importantes da modelagem.

---

# Relacionamento 1:1

Um para Um

Exemplo:

Pessoa ↔ CPF

Cada pessoa possui um CPF.

Cada CPF pertence a apenas uma pessoa.

```text
PESSOA 1 ----- 1 CPF
```

---

# Relacionamento 1:N

Um para Muitos

Exemplo:

Professor → Turma

Um professor pode ministrar várias turmas.

Uma turma possui apenas um professor responsável.

```text
PROFESSOR 1 ----- N TURMA
```

---

# Exemplo Real

Professor Carlos:

- Turma Java
- Turma Python
- Turma Banco de Dados

---

# Relacionamento N:N

Muitos para Muitos

Exemplo:

Aluno ↔ Curso

Um aluno pode cursar vários cursos.

Um curso possui vários alunos.

```text
ALUNO N ----- N CURSO
```

---

# O Problema do N:N

Bancos relacionais não implementam relacionamentos N:N diretamente.

Precisamos criar uma tabela intermediária.

---

# Exemplo

## Antes

```text
ALUNO N ----- N CURSO
```

---

## Depois

```text
ALUNO
   |
MATRICULA
   |
CURSO
```

---

# Tabela Matrícula

| id_aluno | id_curso |
|-----------|----------|
| 1 | 10 |
| 1 | 20 |
| 2 | 10 |

Agora o relacionamento foi resolvido.

---

# Chave Primária (PK)

PK significa Primary Key.

É o identificador único da tabela.

---

## Exemplo

Tabela ALUNO

| id_aluno | nome |
|-----------|-------|
| 1 | Ana |
| 2 | João |

A chave primária é:

```text
id_aluno
```

---

# Características da PK

✔ Não pode repetir

✔ Não pode ser nula

✔ Identifica unicamente um registro

---

# Chave Estrangeira (FK)

FK significa Foreign Key.

É uma chave que aponta para outra tabela.

---

## Exemplo

Tabela CURSO

| id_curso | nome |
|-----------|--------|
| 1 | Java |

Tabela ALUNO

| id_aluno | nome | id_curso |
|----------|------|----------|
| 1 | Ana | 1 |

O campo:

```text
id_curso
```

é uma FK.

---

# Analogia das Chaves

Imagine um condomínio.

A PK é o número do apartamento.

A FK é o endereço que aponta para outro local.

---

# O que é um MER?

MER significa:

Modelo Entidade Relacionamento.

É o diagrama utilizado para representar visualmente o banco.

---

# Exemplo de MER

```text
ALUNO
-----
id_aluno
nome

       realiza

ALUNO --------- MATRICULA -------- CURSO

                        possui

CURSO
-----
id_curso
nome
```

---

# Processo de Modelagem

Passo 1

Ler o problema.

---

Passo 2

Identificar entidades.

---

Passo 3

Identificar atributos.

---

Passo 4

Identificar relacionamentos.

---

Passo 5

Definir cardinalidades.

---

Passo 6

Criar o MER.

---

# Introdução à Normalização

Normalização é o processo de organizar os dados para evitar redundâncias.

---

# Exemplo NÃO Normalizado

| aluno | curso1 | curso2 |
|---------|---------|---------|
| Ana | Java | Python |

Problemas:

- Limite de cursos
- Colunas repetidas
- Difícil manutenção

---

# Solução

Criar tabelas separadas.

ALUNO

CURSO

MATRICULA

---

# Benefícios da Normalização

✔ Menos redundância

✔ Menos erros

✔ Melhor manutenção

✔ Melhor consistência

---

# Erros Comuns

❌ Criar uma tabela única para todo o sistema

❌ Não utilizar chave primária

❌ Duplicar informações

❌ Não definir cardinalidades

❌ Ignorar relacionamentos

---

# Exemplo Completo

Sistema Biblioteca

Entidades:

- Livro
- Autor
- Usuário
- Empréstimo

Relacionamentos:

- Autor escreve Livro
- Usuário realiza Empréstimo
- Livro participa de Empréstimo

---

# Resumo da Aula

Aprendemos:

✔ Entidades

✔ Atributos

✔ Relacionamentos

✔ Cardinalidades

✔ PK

✔ FK

✔ MER

✔ Normalização

---

# Exercícios de Fixação

## Questão 1

O que é uma entidade?

---

## Questão 2

O que é um atributo?

---

## Questão 3

Explique a diferença entre PK e FK.

---

## Questão 4

Explique um relacionamento 1:N.

---

## Questão 5

Explique um relacionamento N:N.

---

## Questão 6

O que é um MER?

---

## Questão 7

Qual o objetivo da normalização?

---

# Exercício Prático

Modele um sistema de academia.

Entidades mínimas:

- Aluno
- Professor
- Plano
- Treino

Defina:

- atributos
- relacionamentos
- cardinalidades

---

# Desafio

Uma loja virtual precisa armazenar:

- Clientes
- Produtos
- Pedidos
- Pagamentos
- Entregas

1. Identifique as entidades.
2. Identifique os atributos.
3. Defina os relacionamentos.
4. Defina as cardinalidades.
5. Desenhe o MER completo.
