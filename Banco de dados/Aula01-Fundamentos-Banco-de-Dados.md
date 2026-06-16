# Aula 01 – Fundamentos de Banco de Dados Relacional

## Objetivos

Ao final desta aula você será capaz de:

- Entender o que é um banco de dados.
- Diferenciar dados, informação e conhecimento.
- Compreender o conceito de persistência de dados.
- Identificar os componentes básicos de um banco de dados.
- Entender o papel de um SGBD.
- Reconhecer situações onde o uso de banco de dados é necessário.

---

# Introdução

Atualmente utilizamos sistemas digitais praticamente o tempo todo.

Quando você:

- envia uma mensagem no WhatsApp;
- assiste um vídeo no YouTube;
- faz uma compra online;
- acessa o Instagram;
- consulta notas escolares;

está utilizando um banco de dados.

Mas afinal...

## O que é um banco de dados?

Um banco de dados é uma coleção organizada de informações armazenadas eletronicamente, permitindo que os dados sejam consultados, alterados e protegidos de forma eficiente.

---

# O Problema Antes dos Bancos de Dados

Imagine uma escola que possui:

- 2.000 alunos
- 120 professores
- 80 turmas

Todas as informações são armazenadas em fichas de papel.

### Problemas:

- documentos perdidos;
- dificuldade para localizar informações;
- informações duplicadas;
- erros de preenchimento;
- demora para gerar relatórios.

Agora imagine procurar a ficha de um aluno específico entre milhares de papéis.

Seria extremamente trabalhoso.

Foi para resolver problemas como esse que surgiram os bancos de dados.

---

# Dados, Informação e Conhecimento

Esses conceitos são frequentemente confundidos.

---

## Dados

Dados são fatos isolados.

Exemplos:

```text
João
18
Blumenau
```

Separadamente eles possuem pouco significado.

---

## Informação

Informação é o resultado da organização dos dados.

| Nome | Idade | Cidade |
|--------|--------|---------|
| João | 18 | Blumenau |

Agora conseguimos interpretar os dados.

---

## Conhecimento

Conhecimento é a capacidade de tomar decisões utilizando informações.

Exemplo:

Após analisar os dados de frequência dos alunos, a escola percebe que estudantes com mais de 25% de faltas possuem maior chance de reprovação.

Isso já é conhecimento.

---

# Analogia: Biblioteca

Uma das analogias mais utilizadas para explicar bancos de dados é a biblioteca.

Imagine uma biblioteca física.

| Biblioteca | Banco de Dados |
|------------|---------------|
| Biblioteca | Banco de Dados |
| Estante | Tabela |
| Livro | Registro |
| Informação do livro | Campo |
| Bibliotecário | SGBD |

---

# O que é Persistência de Dados?

Persistência significa que os dados continuam existindo mesmo após o sistema ser desligado.

Exemplo:

Você envia uma mensagem no WhatsApp.

Desliga o celular.

Liga novamente.

A mensagem continua lá.

Isso ocorre porque ela foi persistida em um banco de dados.

---

# O que é um SGBD?

SGBD significa:

**Sistema Gerenciador de Banco de Dados**

É o software responsável por gerenciar os dados armazenados.

---

# Analogia: Restaurante

Imagine um restaurante.

O cliente faz um pedido.

O garçom leva o pedido até a cozinha.

A cozinha prepara o prato.

O garçom retorna com o resultado.

No banco de dados:

```text
Usuário
   ↓
Sistema
   ↓
SGBD
   ↓
Banco de Dados
```

O SGBD funciona como o garçom.

---

# Principais SGBDs do Mercado

## MySQL

Muito utilizado em aplicações web.

Exemplos:

- WordPress
- PHP
- Laravel

---

## PostgreSQL

Conhecido pela robustez e aderência aos padrões SQL.

Muito utilizado em:

- Sistemas corporativos
- Governo
- Universidades

---

## SQL Server

Desenvolvido pela Microsoft.

É um dos bancos de dados relacionais mais utilizados em empresas de médio e grande porte, especialmente em ambientes corporativos que utilizam tecnologias Microsoft como Windows Server, .NET e Azure.

---

## Oracle Database

Desenvolvido pela Oracle Corporation.

É um dos bancos de dados relacionais mais robustos e utilizados no mundo, especialmente em grandes empresas, instituições financeiras, governos e organizações que necessitam de alta disponibilidade e segurança.

Principais características:

- Alto desempenho
- Suporte a grandes volumes de dados
- Recursos avançados de segurança
- Replicação e alta disponibilidade
- Suporte a ambientes corporativos críticos

Exemplos de utilização:

- Bancos
- Operadoras de telefonia
- Governos
- Grandes indústrias
- Sistemas ERP corporativos
- 
---
## MariaDB

Projeto derivado do MySQL.

Código aberto e amplamente utilizado.

---

# Estrutura de um Banco de Dados

Vamos imaginar um sistema escolar.

---

## Banco de Dados

```text
Escola
```

Dentro dele teremos várias tabelas.

---

## Tabela

Representa um conjunto de informações relacionadas.

Exemplos:

```text
Aluno
Professor
Curso
Turma
```

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

São as características armazenadas.

Na tabela ALUNO:

```text
id
nome
idade
```

Cada campo possui um tipo de dado.

---

# Registros (Linhas)

Representam ocorrências reais.

Exemplo:

```text
1 | Ana | 17
```

Cada linha corresponde a um aluno.

---

# Tipos de Dados

Os bancos de dados trabalham com diferentes tipos de informação.

---

## INT

Armazena números inteiros.

Exemplos:

```text
1
10
500
```

---

## VARCHAR

Armazena textos.

Exemplos:

```text
Ana
João
Maria
```

---

## DATE

Armazena datas.

Exemplo:

```text
2026-06-15
```

---

## DECIMAL

Armazena valores monetários.

Exemplo:

```text
199.99
```

---

## BOOLEAN

Armazena verdadeiro ou falso.

```text
TRUE
FALSE
```

---

# O Problema da Duplicação de Dados

Imagine a seguinte tabela:

| Nome | Curso |
|--------|--------|
| Ana | Java |
| Ana | Python |
| Ana | Banco de Dados |

O nome da Ana aparece repetidamente.

Isso gera:

- desperdício de espaço;
- maior chance de erros;
- dificuldade de manutenção.

Nas próximas aulas veremos como a modelagem resolve esse problema.

---

# Integridade dos Dados

Integridade significa garantir que os dados sejam corretos.

Exemplo:

Uma matrícula não pode existir para um aluno inexistente.

Um pedido não pode pertencer a um cliente que não existe.

O banco de dados ajuda a garantir essas regras.

---

# Segurança dos Dados

Os bancos modernos oferecem:

- autenticação de usuários;
- permissões de acesso;
- criptografia;
- backups.

Exemplo:

Um professor pode visualizar notas.

Mas talvez não possa alterar informações financeiras da instituição.

---

# Backup

Backup é uma cópia de segurança dos dados.

Imagine que o servidor da empresa apresente um problema.

Sem backup:

❌ perda total das informações

Com backup:

✔ recuperação dos dados

---

# Onde os Bancos de Dados São Utilizados?

Praticamente em qualquer sistema.

Exemplos:

- Bancos
- Hospitais
- Escolas
- Universidades
- E-commerce
- Redes sociais
- Aplicativos de transporte
- Streaming

---

# Curiosidade

Grandes empresas de tecnologia armazenam volumes gigantescos de dados.

- Instagram: bilhões de fotos, vídeos e interações.
- Netflix: histórico de visualizações, recomendações e preferências dos usuários.
- Amazon: produtos, pedidos, avaliações e informações logísticas.

Para suportar essa quantidade de informações, essas empresas utilizam milhares de servidores distribuídos em datacenters ao redor do mundo e combinam diferentes tecnologias de armazenamento de dados.
---

# Resumo da Aula

Aprendemos:

✔ O que é um banco de dados

✔ Diferença entre dados, informação e conhecimento

✔ O que é persistência

✔ O papel do SGBD

✔ Tabelas, campos e registros

✔ Tipos de dados

✔ Segurança e backup

---

# Exercícios de Fixação

## Questão 1

Explique com suas palavras o que é um banco de dados.

---

## Questão 2

Qual a diferença entre dado e informação?

---

## Questão 3

O que significa SGBD?

---

## Questão 4

Cite três exemplos de SGBDs.

---

## Questão 5

Qual a função de um backup?

---

## Questão 6

Qual a diferença entre campo e registro?

---

## Questão 7

O que significa persistência de dados?

---

# Exercício Prático

Uma clínica médica deseja armazenar:

- pacientes
- médicos
- consultas

Identifique:

1. Quais tabelas seriam necessárias?
2. Quais informações cada tabela deveria armazenar?

---

# Desafio

Analise os sistemas abaixo e descreva quais tipos de informações provavelmente são armazenadas em seus bancos de dados:

- Netflix
- Spotify
- WhatsApp
- Sistema Acadêmico de uma Escola

Justifique sua resposta.
