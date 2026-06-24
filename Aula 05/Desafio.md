# 🏫 DESAFIO PRÁTICO – ANALISTA DE DADOS DA ESCOLA

## Contexto

Você acaba de ser contratado pela escola para atuar como Analista de Dados.

A direção recebeu diversas solicitações e precisa de relatórios para auxiliar na tomada de decisão.

Seu trabalho é criar as consultas SQL necessárias para responder às perguntas abaixo.

⚠️ Não informe apenas o resultado. Entregue o SQL utilizado.

---

# Parte 1 – Investigação Inicial

## Desafio 1

A secretaria deseja saber:

- Quantos alunos possuem responsável cadastrado.

Monte uma consulta que retorne apenas o número total.

---

## Desafio 2

A direção quer saber:

- Quantos alunos não possuem matrícula ativa.

---

## Desafio 3

Descubra qual turma possui a maior quantidade de alunos matriculados.

Retorne:

- Nome da turma
- Quantidade de alunos

---

## Desafio 4

Qual curso possui mais alunos matriculados atualmente?

Retorne:

- Nome do curso
- Quantidade de alunos

---

# Parte 2 – Situação Financeira

## Desafio 5

A coordenação financeira deseja saber:

Qual o valor total que ainda falta receber dos pagamentos pendentes?

---

## Desafio 6

Liste todos os alunos que possuem pagamentos pendentes.

Exiba:

- Nome do aluno
- Curso
- Valor devido

---

## Desafio 7

Qual aluno possui o maior valor em aberto?

---

## Desafio 8

Qual percentual dos pagamentos já foi quitado?

Dica:

Você precisará utilizar funções de agregação e cálculos.

---

# Parte 3 – Gestão Acadêmica

## Desafio 9

Liste os cursos que possuem mais de uma turma cadastrada.

---

## Desafio 10

Liste os professores que lecionam em mais de uma disciplina.

---

## Desafio 11

Descubra quais disciplinas ainda não possuem professor associado.

---

## Desafio 12

Descubra quais turmas ainda possuem vagas disponíveis.

Retorne:

- Nome da turma
- Total de vagas
- Quantidade de alunos matriculados
- Quantidade de vagas restantes

---

# Parte 4 – Relatórios Inteligentes

## Desafio 13

Crie uma consulta que classifique os pagamentos:

| Valor | Categoria |
|---------|---------|
| Até R$ 200 | Baixo |
| Entre R$ 201 e R$ 300 | Médio |
| Acima de R$ 300 | Alto |

Exiba:

- Nome do aluno
- Valor
- Categoria

---

## Desafio 14

Crie um ranking das turmas com mais alunos.

Exiba:

- Turma
- Quantidade de alunos

Ordene do maior para o menor.

---

## Desafio 15

Crie um ranking dos cursos por número de matrículas.

---

# Parte 5 – Problemas da Secretaria

## Desafio 16

A secretaria suspeita que existam CPFs repetidos.

Crie uma consulta que localize CPFs duplicados na tabela de alunos.

---

## Desafio 17

Localize possíveis e-mails duplicados.

---

## Desafio 18

Encontre alunos que não possuem telefone cadastrado.

---

## Desafio 19

Encontre responsáveis que não estão vinculados a nenhum aluno.

---

# Parte 6 – Desafio de Negócio

A direção pretende abrir novas turmas no próximo semestre.

Antes disso, ela precisa de um relatório contendo:

## Desafio 20

Para cada curso mostrar:

- Quantidade de turmas
- Quantidade de alunos
- Média de alunos por turma

---

# 🏆 Desafio Master

A direção quer um relatório executivo.

Monte uma única consulta que retorne:

- Nome do curso
- Quantidade de turmas
- Quantidade de alunos
- Quantidade de matrículas ativas
- Valor total recebido
- Valor total pendente

Ordenado pelo curso com maior número de alunos.

---

# Entrega

Criar um arquivo:

```text
atividade_matriculas.sql
```

contendo todas as consultas desenvolvidas.

---

# Critérios de Avaliação

| Critério | Pontos |
|-----------|---------|
| Uso correto de JOINs | 2 |
| Uso correto de filtros | 2 |
| Uso correto de agregações | 2 |
| Resolução dos problemas de negócio | 2 |
| Organização e legibilidade do SQL | 2 |
| TOTAL | 10 |
