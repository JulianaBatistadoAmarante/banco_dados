
# Aula 02 - Modelagem de Dados e MER

## Objetivos

- Compreender entidades e atributos.
- Criar Diagramas Entidade Relacionamento.
- Identificar cardinalidades.

---

# O que é Modelagem?

Antes de construir uma casa fazemos a planta.

Antes de criar um banco fazemos a modelagem.

---

# Analogia

Banco de Dados = Casa

Modelagem = Planta da Casa

---

# Entidade

É algo que desejamos armazenar.

Exemplos:

- Cliente
- Produto
- Curso
- Professor

---

# Atributos

São características da entidade.

CLIENTE

- id_cliente
- nome
- telefone

---

# Relacionamentos

CLIENTE faz PEDIDO

ALUNO faz MATRÍCULA

---

# Cardinalidades

## Um para Um (1:1)

Pessoa → CPF

---

## Um para Muitos (1:N)

Professor → Turmas

Um professor possui várias turmas.

---

## Muitos para Muitos (N:N)

Aluno ↔ Curso

Um aluno pode fazer vários cursos.

Um curso possui vários alunos.

---

# Exemplo MER

Aluno

- id_aluno
- nome

Curso

- id_curso
- nome

Aluno ---- Matrícula ---- Curso

---

# Exercícios

1. O que é uma entidade?
2. O que é um atributo?
3. Explique 1:N.
4. Explique N:N.

---

# Desafio

Crie o MER de uma biblioteca.

Entidades:

- Livro
- Autor
- Usuário
- Empréstimo
