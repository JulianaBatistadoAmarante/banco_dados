# Plano de Ensino — Banco de Dados para Iniciantes

**Docente:** Karize Viecelli  
**Carga horária total:** 24 horas (6 aulas × 4 horas)  
**Tema integrador:** Sistema de loja  
**Ferramentas:** MySQL Workbench · draw.io · MongoDB Atlas · MongoDB Compass  

---

## Objetivo Geral

Capacitar os alunos a modelar, implementar e consultar bancos de dados relacionais e não relacionais, compreendendo os critérios de escolha entre as duas abordagens para problemas reais.

---

## Objetivos Específicos

- Criar Diagramas de Entidade-Relacionamento (DER) com notação UML e crow's foot
- Mapear o DER para tabelas SQL com chaves primárias e estrangeiras
- Escrever consultas SQL com SELECT, JOIN, GROUP BY, HAVING e funções de agregação
- Compreender o modelo de documentos do MongoDB e executar operações CRUD
- Construir pipelines de agregação no MongoDB
- Justificar tecnicamente a escolha entre banco relacional e NoSQL

---

## Distribuição de Tempo por Aula (4 horas)

| Momento | Atividade | Duração |
|---------|-----------|---------|
| Exposição dialogada | Slides interativos, perguntas à turma | 45 min |
| Demo ao vivo | Docente digita, turma acompanha | 30 min |
| Prática guiada | Alunos executam com roteiro passo a passo | 90 min |
| Desafio autônomo | Alunos resolvem sem consultar anotações | 45 min |
| Feedback e apresentações | Correção coletiva e discussão | 30 min |

---

## Estrutura das Aulas

### Aula 01 — Conceitos de BD, UML, Cardinalidade e DER
**Paleta:** Azul · `#1565C0`

**Conteúdo:**
- O que é um banco de dados e para que serve
- Entidades, atributos e relacionamentos
- Cardinalidade: 1:1, 1:N, N:M
- Notação UML clássica (números) e crow's foot (símbolos)
- Chave primária (PK) e chave estrangeira (FK)
- Construção de DER no draw.io / Lucidchart

**Ferramentas:** draw.io ou Lucidchart (online, gratuito)

**Desafio:** Criar DER com 3 entidades — Produto, Categoria, Cliente

**Entregável:** DER exportado como PNG

---

### Aula 02 — Do DER ao SQL no Workbench
**Paleta:** Azul · `#1565C0`

**Conteúdo:**
- Mapeamento DER → tabelas SQL
- Tipos de dados: INT, VARCHAR, DECIMAL, DATE, TINYINT
- CREATE DATABASE, CREATE TABLE, PRIMARY KEY, FOREIGN KEY
- INSERT INTO na ordem correta (pai antes do filho)
- SELECT, WHERE, ORDER BY
- EER (Enhanced Entity-Relationship) no MySQL Workbench via Reverse Engineer

**Ferramentas:** MySQL Workbench

**Desafio:** Criar o banco loja completo a partir do DER da Aula 01

**Entregável:** Script SQL funcional + screenshot do EER

---

### Aula 03 — Do DER ao SQL: Criando o banco no Workbench
**Paleta:** Azul · `#1565C0`  
**Pré-requisito:** DER concluído na Aula 02

**Conteúdo:**
- Revisão rápida: o DER da loja (Produto, Categoria, Cliente)
- Mapeamento DER → tabelas SQL: cada entidade vira uma tabela
- Tipos de dados: INT, VARCHAR, DECIMAL(10,2), DATE, TINYINT(1)
- CREATE DATABASE e USE
- CREATE TABLE com PRIMARY KEY e AUTO_INCREMENT
- FOREIGN KEY: declaração, referência e ON DELETE
- INSERT INTO na ordem correta (pai antes do filho)
- SELECT básico, WHERE, ORDER BY
- EER no Workbench via Database → Reverse Engineer

**Ferramentas:** MySQL Workbench

**Desafio:** Criar do zero o banco `loja` com 3 tabelas (categoria, produto, cliente), inserir dados e gerar o EER

**Entregável:** Script SQL funcionando + screenshot do EER

---

### Aula 04 — Consultando dados: SELECT avançado e INNER JOIN
**Paleta:** Verde · `#15803d`  
**Pré-requisito:** Banco `loja` criado e populado

**Conteúdo:**
- Revisão: SELECT, WHERE, ORDER BY, LIMIT
- Por que precisamos de JOIN (problema do id_categoria numérico)
- INNER JOIN com aliases (p, c)
- LEFT JOIN — retornar todos mesmo sem correspondência
- JOIN com WHERE — filtrar dentro do join
- GROUP BY — agrupar linhas pelo mesmo valor
- COUNT, SUM, AVG, MIN, MAX
- HAVING — filtrar grupos após o agrupamento
- WHERE vs HAVING — momentos diferentes da execução
- Ordem de execução real: FROM → JOIN → WHERE → GROUP BY → HAVING → SELECT → ORDER BY

**Ferramentas:** MySQL Workbench

**Desafio:** 8 queries analíticas — relatórios de estoque e vendas por categoria

---

### Aula 05 — SQL na prática: UPDATE, DELETE e consultas combinadas
**Paleta:** Verde · `#15803d`  
**Pré-requisito:** SELECT e JOIN dominados

**Conteúdo:**
- UPDATE com WHERE (e o risco de esquecer o WHERE)
- DELETE com WHERE (e o risco de esquecer o WHERE)
- Transações básicas: START TRANSACTION, COMMIT, ROLLBACK
- BETWEEN, IN, LIKE, IS NULL
- Subconsulta simples no WHERE (SELECT dentro de SELECT)
- CASE WHEN — lógica condicional no SELECT
- Criação de VIEW simples
- Boas práticas: backup antes de UPDATE/DELETE, teste com SELECT primeiro

**Ferramentas:** MySQL Workbench

**Desafio:** Atualizar preços de uma categoria, remover registros com critério, criar uma VIEW de relatório

---

### Aula 06 — Introdução ao NoSQL e MongoDB
**Paleta:** Roxo · `#6b21a8`  
**Pré-requisito:** SQL relacional consolidado

**Conteúdo:**
- O que é NoSQL — "Not Only SQL" — quando SQL não é suficiente
- Comparativo SQL vs NoSQL: estrutura, schema, escala, transações
- MongoDB — banco de documentos JSON/BSON
- Hierarquia: Database → Collection → Document → Field
- _id — chave primária automática (ObjectId)
- Schema flexível: documentos da mesma coleção com campos diferentes
- CRUD: insertOne, insertMany, find(), updateOne ($set, $inc), deleteOne
- Embedding vs Referência — quando usar cada abordagem
- Operadores de filtro: $gt, $lt, $gte, $in, $exists, $regex
- Projeção em find(), sort(), limit()

**Ferramentas:** MongoDB Atlas (cloud gratuito) + MongoDB Compass

**Desafio:** Criar banco `loja_mongo`, inserir 5+ produtos com estruturas diferentes, CRUD completo

---

### Aula 07 — Projeto Integrador + Relacional vs NoSQL
**Paleta:** Azul · `#1565C0` (fecha o ciclo)  
**Pré-requisito:** Todas as aulas anteriores

**Conteúdo:**
- Pipeline de agregação MongoDB: $match, $group, $sort, $project
- Paralelo SQL × MongoDB: mesma consulta nos dois bancos
- Critérios de decisão: quando usar MySQL vs MongoDB
- Casos reais: ERP, catálogo, logs, IoT, sistemas financeiros
- Orientações para o projeto integrador
- Tempo dedicado para desenvolvimento + apresentações

**Projeto Integrador — Entrega Final:**

| Item | Descrição |
|------|-----------|
| DER | Mínimo 5 entidades, crow's foot, cardinalidade correta, exportado como PNG |
| SQL | CREATE TABLE com PKs e FKs, INSERT, 2 queries INNER JOIN, 1 GROUP BY + agregação, EER via Reverse Engineer |
| Comparativo | 1 página: escolha MySQL ou MongoDB, 3 justificativas técnicas, 2 benefícios de negócio |
| Apresentação oral | 5 minutos: contexto → DER → SQL ao vivo → MongoDB → comparativo → perguntas |
| Bônus | MongoDB: insertMany + aggregate equivalente a uma query SQL |

**Ferramentas:** draw.io + MySQL Workbench + MongoDB Atlas + Compass

---

## Progressão de Complexidade

```
Aula 01  Conceitos e vocabulário ─────────────────────── base
Aula 02  Cardinalidade + DER + exercício ────────────── modelagem 
Aula 03  DER → SQL + CREATE TABLE + INSERT ──────────── implementação
Aula 04  SELECT + INNER JOIN + GROUP BY + HAVING ─────── consulta analítica
Aula 05  UPDATE + DELETE + subconsultas + VIEW ───────── manutenção de dados
Aula 06  NoSQL + MongoDB + CRUD + embedding ──────────── novo paradigma
Aula 07  Agregação MongoDB + comparativo + projeto ───── integração e entrega
```

---

## Critérios de Avaliação — Projeto Final

| Critério | Peso |
|---------|------|
| DER correto (entidades, FKs, cardinalidade, crow's foot) | 20% |
| SQL funcional (tabelas criadas, dados inseridos, queries corretas) | 25% |
| EER gerado bate com o DER | 10% |
| Comparativo fundamentado tecnicamente | 25% |
| Apresentação oral clara e objetiva (5 min) | 20% |

---

## Materiais por Aula (5 arquivos HTML interativos)

| Arquivo | Uso | Duração |
|---------|-----|---------|
| `a0X_exposicao.html` | Slides para projetor — 9 slides + quiz | 45 min |
| `a0X_demo_ao_vivo.html` | Digitação animada — docente digita, turma acompanha | 30 min |
| `a0X_pratica_guiada.html` | Roteiro passo a passo com gabarito colapsável | 90 min |
| `a0X_desafio.html` | Checklist de requisitos + cronômetro 45 min | 45 min |
| `a0X_feedback.html` | Painel de apresentações com notas, critérios e pontos de discussão | 30 min |

---

## Referências

- **MySQL:** dev.mysql.com/doc
- **MongoDB:** mongodb.com/docs · MongoDB University (gratuito)
- **Modelagem:** draw.io (app.diagrams.net)
- **Certificações gratuitas:** MySQL OCA · MongoDB M001

---

*© 2026 Karize Viecelli · @karizeviecelli*
