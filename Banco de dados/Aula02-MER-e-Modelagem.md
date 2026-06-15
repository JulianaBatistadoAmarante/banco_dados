# Aula 02 – Modelagem de Dados e MER

## Objetivos

Ao final desta aula você será capaz de:

- Compreender a importância da modelagem de dados.
- Identificar entidades, atributos e relacionamentos.
- Construir Diagramas Entidade-Relacionamento (MER).
- Aplicar cardinalidades corretamente.
- Entender o processo de levantamento de requisitos.

---

# Por que modelar antes de criar?

Imagine que você deseja construir uma casa.

Você começaria levantando as paredes sem uma planta?

Provavelmente não.

No desenvolvimento de software acontece exatamente a mesma coisa.

Antes de criar tabelas precisamos planejar como os dados serão armazenados.

---

# Analogia: Planta da Casa

Casa → Banco de Dados

Planta → MER

Engenheiro → Analista de Sistemas

Pedreiro → Desenvolvedor

---

# O que é Modelagem de Dados?

É o processo de representar visualmente as informações que serão armazenadas pelo sistema.

Objetivos:

- Evitar erros futuros
- Organizar os dados
- Facilitar manutenção
- Reduzir redundâncias

---

# O que é uma Entidade?

Uma entidade é algo que existe no mundo real e que desejamos armazenar.

Exemplos:

- Aluno
- Professor
- Produto
- Cliente
- Pedido

---

# O que NÃO é uma entidade?

Características de algo.

Exemplo:

Cliente

Nome NÃO é entidade.

Nome é atributo.

---

# Atributos

São características da entidade.

CLIENTE

- id_cliente
- nome
- telefone
- email

---

# Tipos de Atributos

## Simples

Nome

CPF

Idade

---

## Compostos

Endereço

Pode ser dividido em:

- Rua
- Número
- Bairro

---

# Chave Primária

É o identificador único.

Exemplo:

```text
id_cliente
```

Não pode repetir.

---

# Relacionamentos

Representam interações entre entidades.

Exemplo:

CLIENTE faz PEDIDO

ALUNO realiza MATRÍCULA

PROFESSOR ministra DISCIPLINA

---

# Cardinalidades

## Um para Um (1:1)

Pessoa ↔ CPF

Cada pessoa possui apenas um CPF.

---

## Um para Muitos (1:N)

Professor → Turma

Um professor pode ministrar várias turmas.

Cada turma possui apenas um professor responsável.

---

## Muitos para Muitos (N:N)

Aluno ↔ Curso

Um aluno pode cursar vários cursos.

Um curso possui vários alunos.

---

# Problema do N:N

Banco relacional não implementa diretamente.

Precisamos criar uma tabela intermediária.

Aluno

Curso

↓

Matricula

---

# Exemplo Completo

ALUNO

- id_aluno
- nome

CURSO

- id_curso
- nome

MATRICULA

- id_aluno
- id_curso

---

# Etapas da Modelagem

1. Levantar requisitos
2. Identificar entidades
3. Identificar atributos
4. Identificar relacionamentos
5. Definir cardinalidades
6. Criar MER

---

# Erros Comuns

❌ Criar entidade para tudo

❌ Não identificar cardinalidades

❌ Duplicar informações

❌ Esquecer chave primária

---

# Exercícios

1. Identifique entidades para um sistema hospitalar.
2. Defina atributos para Médico.
3. Defina cardinalidades entre Paciente e Consulta.

---

# Desafio

Modele um sistema para uma loja virtual contendo:

- Cliente
- Produto
- Pedido
- Pagamento
- Entrega
