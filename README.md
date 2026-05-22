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

### Aula 03 — SELECT com INNER JOIN, GROUP BY e Agregação
**Paleta:** Verde · `#15803d`

**Conteúdo:**
- Por que precisamos de JOIN (problema do id_categoria numérico)
- INNER JOIN com aliases (p, c)
- Resultado do JOIN — linhas combinadas
- GROUP BY — agrupar para resumir
- COUNT, SUM, AVG, MIN, MAX
- HAVING — filtrar grupos após agrupamento
- WHERE vs HAVING — momentos diferentes da execução
- Ordem de execução real do SQL: FROM → JOIN → WHERE → GROUP BY → HAVING → SELECT → ORDER BY

**Ferramentas:** MySQL Workbench

**Desafio:** 8 queries analíticas — relatórios de estoque por categoria

---

### Aula 04 — Introdução ao NoSQL e MongoDB
**Paleta:** Roxo · `#6b21a8`

**Conteúdo:**
- O que é NoSQL — "Not Only SQL"
- Comparativo SQL vs NoSQL (estrutura, schema, escala, transações)
- MongoDB — banco de documentos JSON/BSON
- Hierarquia: Database → Collection → Document → Field
- _id — chave primária automática (ObjectId)
- CRUD: insertOne, insertMany, find, updateOne ($set, $inc), deleteOne
- Embedding vs Referência — quando usar cada abordagem
- Operadores de filtro: $gt, $lt, $gte, $lte, $in, $ne
- Projeção em find()

**Ferramentas:** MongoDB Atlas (cloud gratuito) + MongoDB Compass

**Desafio:** Criar banco loja_mongo com 5+ produtos, CRUD completo

---

### Aula 05 — Consultas MongoDB e Pipeline de Agregação
**Paleta:** Laranja · `#c2410c`

**Conteúdo:**
- Operadores avançados: $exists, $regex, $and, $or, $not
- Pipeline de agregação — sequência de estágios
- $match (equivale ao WHERE)
- $group com $sum, $avg, $min, $max (equivale ao GROUP BY)
- $addFields — campos calculados
- $project — projeção de campos (1=incluir, 0=excluir)
- $sort e $limit — ordenação e paginação
- $lookup — equivalente ao JOIN entre coleções
- $unwind — "explodir" arrays
- createIndex — otimizar consultas
- Paralelo SQL × MongoDB lado a lado

**Ferramentas:** MongoDB Atlas + Compass

**Desafio:** Pipeline aggregate equivalente às queries SQL da Aula 03

---

### Aula 06 — Relacional vs NoSQL e Projeto Integrador
**Paleta:** Azul · `#1565C0` (fecha o ciclo)

**Conteúdo:**
- Revisão SQL: DER → FK → JOIN → GROUP BY → EER
- Revisão MongoDB: embedding → find → aggregate
- Comparativo prático: mesma pergunta nos dois bancos
- Critérios de decisão: quando usar MySQL vs MongoDB
- Casos de uso reais: ERP, catálogo, logs, IoT, sistemas financeiros

**Projeto Integrador — Entrega Final:**

| Item | Descrição |
|------|-----------|
| DER | Mínimo 5 entidades, crow's foot, cardinalidade correta, exportado como PNG |
| SQL | CREATE TABLE com PKs e FKs, INSERT na ordem correta, 2 queries INNER JOIN, 1 GROUP BY + agregação, EER gerado via Reverse Engineer |
| Comparativo | 1 página: escolha MySQL ou MongoDB para o sistema modelado, 3 justificativas técnicas, 2 benefícios de negócio |
| Apresentação oral | 5 minutos: contexto → DER → SQL ao vivo → MongoDB → comparativo → perguntas |
| Bônus | MongoDB: insertMany com 3+ documentos + aggregate equivalente a uma query SQL |

---

## Critérios de Avaliação

| Critério | Peso |
|---------|------|
| DER correto (entidades, FKs, cardinalidade) | 20% |
| SQL funcional (tabelas + queries) | 25% |
| EER gerado bate com o DER | 10% |
| Comparativo fundamentado tecnicamente | 25% |
| Apresentação oral clara e objetiva | 20% |

---

## Recursos por Aula

Cada aula possui 5 arquivos HTML interativos:

| Arquivo | Uso | Duração |
|---------|-----|---------|
| `a0X_exposicao.html` | Slides interativos para projetor — 9 slides com quiz | 45 min |
| `a0X_demo_ao_vivo.html` | Digitação animada passo a passo — docente digita, turma acompanha | 30 min |
| `a0X_pratica_guiada.html` | Roteiro passo a passo com gabarito colapsável | 90 min |
| `a0X_desafio.html` | Checklist de requisitos + cronômetro 45 min | 45 min |
| `a0X_feedback.html` | Painel de apresentações com notas, critérios e pontos de discussão | 30 min |

---

## Referências e Próximos Passos

- **MySQL:** dev.mysql.com/doc
- **MongoDB:** mongodb.com/docs
- **draw.io:** app.diagrams.net
- **Certificações gratuitas:** MySQL OCA · MongoDB University (M001, M103)
- **Prática:** modelar um sistema pessoal (agenda, biblioteca, estoque) do zero

---

*© 2026 Karize Viecelli · @karizeviecelli*
