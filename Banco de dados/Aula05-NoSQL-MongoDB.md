# Aula 05 - Introdução ao NoSQL e MongoDB

## Objetivos

- Entender o conceito de NoSQL.
- Conhecer MongoDB.
- Comparar SQL e NoSQL.

---

# Por que surgiu o NoSQL?

Os bancos relacionais funcionam muito bem.

Mas sistemas como:

- Facebook
- Instagram
- YouTube

passaram a armazenar bilhões de registros.

Foi necessário criar soluções mais flexíveis.

---

# SQL x NoSQL

| SQL | NoSQL |
|------|--------|
| Tabelas | Documentos |
| Linhas | JSON |
| JOIN | Documento Embutido |
| Estrutura Fixa | Estrutura Flexível |

---

# Analogia

SQL

Armário com gavetas organizadas.

NoSQL

Mochila onde cada item pode possuir formatos diferentes.

---

# Documento MongoDB

```json
{
   "_id":1,
   "nome":"Ana",
   "idade":18
}
```

---

# Criando Collection

```javascript
db.createCollection("alunos")
```

---

# Inserindo Documento

```javascript
db.alunos.insertOne({
 nome:"Ana",
 idade:18
})
```

---

# Consultando

```javascript
db.alunos.find()
```

---

# Filtrando

```javascript
db.alunos.find({
 idade:18
})
```

---

# Atualizando

```javascript
db.alunos.updateOne(
 {nome:"Ana"},
 {$set:{idade:19}}
)
```

---

# Removendo

```javascript
db.alunos.deleteOne({
 nome:"Ana"
})
```

---

# Exercícios

1. O que é NoSQL?
2. O que é uma Collection?
3. O que é um Documento?
4. Quando usar MongoDB?

---

# Desafio

Transforme o seguinte modelo relacional:

Cliente
Pedido

em um documento JSON do MongoDB.
