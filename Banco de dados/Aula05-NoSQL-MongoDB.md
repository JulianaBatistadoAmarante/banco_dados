# Aula 05 – Introdução ao NoSQL e MongoDB

## Objetivos

Ao final desta aula você será capaz de:

- Entender o surgimento dos bancos NoSQL.
- Compreender as limitações dos bancos relacionais.
- Conhecer os principais tipos de bancos NoSQL.
- Entender a estrutura de documentos do MongoDB.
- Realizar operações básicas de CRUD.
- Comparar modelagem SQL e NoSQL.
- Identificar cenários adequados para cada tecnologia.

---

# Introdução

Durante muitos anos os bancos relacionais dominaram praticamente todos os sistemas do mundo.

Exemplos:

- MySQL
- PostgreSQL
- Oracle
- SQL Server

Eles continuam extremamente importantes e são utilizados por milhões de empresas.

Mas com o crescimento da internet surgiram novos desafios.

---

# O Problema dos Grandes Volumes de Dados

Imagine uma escola com:

- 1.000 alunos
- 100 professores

Um banco relacional funciona perfeitamente.

Agora imagine:

- Instagram
- Facebook
- TikTok
- YouTube

Essas plataformas armazenam:

- bilhões de usuários
- trilhões de curtidas
- petabytes de fotos e vídeos

Nesse cenário, o modelo relacional começou a enfrentar dificuldades.

---

# Analogia: Arquivo Físico

Imagine uma empresa guardando documentos.

## Modelo Relacional

Todos os documentos precisam seguir exatamente o mesmo formulário.

```text
Nome:
Telefone:
Cidade:
Email:
```

Mesmo que algumas informações não existam.

---

## Modelo NoSQL

Cada documento pode possuir informações diferentes.

```json
{
  "nome":"Ana"
}
```

```json
{
  "nome":"João",
  "telefone":"99999-9999"
}
```

```json
{
  "nome":"Maria",
  "telefone":"88888-8888",
  "instagram":"@maria"
}
```

Muito mais flexível.

---

# O que significa NoSQL?

NoSQL significa:

**Not Only SQL**

(Não Apenas SQL)

Importante:

Não significa "Sem SQL".

Significa que existem outras formas de armazenar dados além do modelo relacional.

---

# Principais Características

✔ Estrutura flexível

✔ Alta escalabilidade

✔ Grande volume de dados

✔ Alto desempenho

✔ Distribuição entre servidores

---

# Escalabilidade

## Escalabilidade Vertical

Adicionar mais recursos ao mesmo servidor.

Exemplo:

```text
8 GB RAM → 32 GB RAM
```

Muito utilizada em bancos relacionais.

---

## Escalabilidade Horizontal

Adicionar mais servidores.

```text
Servidor 1
Servidor 2
Servidor 3
Servidor 4
```

Muito utilizada em bancos NoSQL.

---

# Analogia

Relacional:

Comprar um caminhão maior.

NoSQL:

Comprar vários caminhões menores.

---

# Tipos de Bancos NoSQL

Existem quatro categorias principais.

---

# 1. Documento

Armazenam documentos JSON.

Exemplos:

- MongoDB
- CouchDB

Estrutura:

```json
{
  "nome":"Ana",
  "idade":18
}
```

---

# 2. Chave-Valor

Armazenam pares chave e valor.

Exemplo:

```text
usuario:123 → Ana
```

Exemplos:

- Redis
- DynamoDB

---

# 3. Colunar

Armazenam dados por colunas.

Exemplos:

- Cassandra
- HBase

Muito utilizados em Big Data.

---

# 4. Grafos

Representam relacionamentos complexos.

Exemplos:

- Neo4J

Utilizados em:

- Redes sociais
- Sistemas de recomendação
- Mapas

---

# O MongoDB

MongoDB é atualmente um dos bancos NoSQL mais populares do mundo.

Características:

- Código aberto
- Baseado em documentos
- Estrutura JSON
- Alta escalabilidade

---

# Estrutura do MongoDB

Relacional:

```text
Banco
 └── Tabela
      └── Registro
```

MongoDB:

```text
Banco
 └── Collection
      └── Documento
```

---

# Comparação

| SQL | MongoDB |
|------|----------|
| Banco | Banco |
| Tabela | Collection |
| Linha | Documento |
| Coluna | Campo |
| JOIN | Documento Embutido |

---

# O que é uma Collection?

Collection é semelhante a uma tabela.

Exemplo:

```text
alunos
```

```text
clientes
```

```text
produtos
```

---

# O que é um Documento?

Documento é semelhante a um registro.

Exemplo:

```json
{
   "_id": 1,
   "nome": "Ana",
   "idade": 18
}
```

---

# Estrutura JSON

JSON significa:

JavaScript Object Notation

É o formato utilizado pelo MongoDB.

Exemplo:

```json
{
  "nome":"João",
  "idade":20,
  "cidade":"Blumenau"
}
```

---

# CRUD no MongoDB

CRUD significa:

Create
Read
Update
Delete

---

# Inserindo Dados

```javascript
db.alunos.insertOne({
   nome:"Ana",
   idade:18
});
```

---

# Inserindo Vários Documentos

```javascript
db.alunos.insertMany([
   {nome:"Ana"},
   {nome:"João"},
   {nome:"Maria"}
]);
```

---

# Consultando Dados

```javascript
db.alunos.find();
```

Retorna todos os documentos.

---

# Consultando com Filtro

```javascript
db.alunos.find({
   idade:18
});
```

---

# Consultando Campos Específicos

```javascript
db.alunos.find(
 {},
 {nome:1}
);
```

---

# Atualizando Dados

```javascript
db.alunos.updateOne(
 {nome:"Ana"},
 {$set:{idade:19}}
);
```

---

# Atualizando Vários

```javascript
db.alunos.updateMany(
 {},
 {$set:{ativo:true}}
);
```

---

# Removendo Documentos

```javascript
db.alunos.deleteOne(
 {nome:"Ana"}
);
```

---

# Removendo Vários

```javascript
db.alunos.deleteMany(
 {idade:{$lt:18}}
);
```

---

# Modelagem Relacional

Cliente

| id | nome |
|----|------|
| 1 | Ana |

Pedido

| id | cliente |
|----|----------|
| 101 | 1 |

---

# Modelagem MongoDB

```json
{
  "cliente":"Ana",
  "pedidos":[
    {
      "id":101,
      "valor":500
    }
  ]
}
```

---

# Vantagens do MongoDB

✔ Estrutura flexível

✔ Escalabilidade

✔ Alta performance

✔ Fácil integração com aplicações web

✔ Ótimo para APIs REST

---

# Desvantagens

✘ Menos adequado para transações complexas

✘ Relacionamentos complexos podem ser difíceis

✘ Maior risco de inconsistência se mal modelado

---

# Quando Utilizar SQL?

- Sistemas bancários
- ERP
- RH
- Financeiro
- Controle acadêmico

Sempre que a integridade dos dados for crítica.

---

# Quando Utilizar NoSQL?

- Redes sociais
- Aplicativos de mensagens
- Big Data
- IoT
- Logs
- Sistemas com milhões de acessos simultâneos

---

# Casos Reais

## Netflix

Utiliza diversos bancos NoSQL para lidar com escalabilidade global.

---

## Uber

Utiliza bancos NoSQL para processar milhões de corridas.

---

## Amazon

Utiliza soluções NoSQL em diversos serviços.

---

# Exercícios

1. O que significa NoSQL?
2. Qual a diferença entre tabela e collection?
3. O que é um documento?
4. Cite os quatro tipos de bancos NoSQL.
5. Quando utilizar MongoDB?

---

# Exercício Prático

Transforme o seguinte modelo relacional:

CLIENTE

| id | nome |
|----|------|

PEDIDO

| id | valor |
|----|-------|

em um documento MongoDB.

---
# link Colab 
https://colab.research.google.com/drive/1DHp85nuCIw9mKWpzkEfA-XZVh84rqYE_?usp=sharing 
---
# Desafio

Modele em MongoDB:

- Sistema Escolar
- Loja Virtual
- Rede Social

Definindo collections e documentos adequados.
