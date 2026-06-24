USE escola_matriculas;
# Lista de SELECTs e funções SQL — MySQL

## 1. SELECT básico


SELECT * FROM alunos;

##Mostra **todos os dados** da tabela `alunos`.
##O `*` significa “todas as colunas”.


SELECT nome, email FROM alunos;

##Mostra apenas as colunas `nome` e `email` dos alunos.

---

## 2. WHERE — filtrar dados


SELECT * FROM alunos
WHERE cidade = 'Blumenau';

##Mostra somente os alunos que moram em **Blumenau**.

---


SELECT * FROM alunos
WHERE estado = 'SC';


##Mostra apenas os alunos do estado de **Santa Catarina**.

---

## 3. ORDER BY — ordenar resultados


SELECT * FROM alunos
ORDER BY nome;

##Mostra os alunos em ordem alfabética pelo nome.

---


SELECT * FROM alunos
ORDER BY nome DESC;


##Mostra os alunos em ordem alfabética inversa.

---

## 4. COUNT — contar registros


SELECT COUNT(*) AS total_alunos
FROM alunos;


#Conta quantos alunos existem na tabela.

---


SELECT COUNT(*) AS total_matriculas
FROM matriculas;


##Conta quantas matrículas foram realizadas.

---

## 5. SUM — somar valores


SELECT SUM(valor) AS total_recebido
FROM pagamentos;


##Soma todos os valores cadastrados na tabela `pagamentos`.

---

SELECT SUM(valor) AS total_pago
FROM pagamentos
WHERE status_pagamento = 'Pago';


##Soma apenas os pagamentos que estão com status **Pago**.

---

## 6. AVG — calcular média

SELECT AVG(valor) AS media_pagamentos
FROM pagamentos;


##Calcula a média dos valores dos pagamentos.

---

SELECT ROUND(AVG(valor), 2) AS media_arredondada
FROM pagamentos;


##Calcula a média e arredonda para 2 casas decimais.

---

## 7. MIN e MAX


SELECT MIN(valor) AS menor_pagamento
FROM pagamentos;


##Mostra o menor valor de pagamento cadastrado.

---

SELECT MAX(valor) AS maior_pagamento
FROM pagamentos;

##Mostra o maior valor de pagamento cadastrado.

---

## 8. LIKE — pesquisar parte do texto

SELECT * FROM alunos
WHERE nome LIKE 'A%';


##Mostra alunos cujo nome começa com a letra **A**.

---


SELECT * FROM alunos
WHERE nome LIKE '%Souza%';


##Mostra alunos que possuem **Souza** em qualquer parte do nome.

---

## 9. BETWEEN — intervalo

SELECT * FROM matriculas
WHERE data_matricula BETWEEN '2026-02-01' AND '2026-02-28';


##Mostra as matrículas feitas durante fevereiro de 2026.

---

## 10. IN — vários valores possíveis

SELECT * FROM turmas
WHERE turno IN ('Matutino', 'Noturno');

##Mostra turmas que são do turno **Matutino** ou **Noturno**.

---

## 11. IS NULL — campos vazios


SELECT * FROM pagamentos
WHERE data_pagamento IS NULL;


##Mostra pagamentos que ainda não possuem data de pagamento, ou seja, provavelmente ainda não foram pagos.

---


SELECT * FROM pagamentos
WHERE data_pagamento IS NOT NULL;


##Mostra pagamentos que já possuem data de pagamento.

---

## 12. GROUP BY — agrupar informações


SELECT cidade, COUNT(*) AS total_alunos
FROM alunos
GROUP BY cidade;


##Conta quantos alunos existem em cada cidade.

---

SELECT status_matricula, COUNT(*) AS total
FROM matriculas
GROUP BY status_matricula;

##Conta quantas matrículas existem em cada situação: ativa, cancelada, concluída ou trancada.

---

## 13. HAVING — filtrar grupos

SELECT cidade, COUNT(*) AS total_alunos
FROM alunos
GROUP BY cidade
HAVING COUNT(*) > 1;


##Mostra apenas cidades que possuem mais de 1 aluno cadastrado.

---

## 14. INNER JOIN — juntar tabelas


SELECT 
    alunos.nome AS aluno,
    turmas.nome AS turma
FROM matriculas
INNER JOIN alunos 
    ON matriculas.id_aluno = alunos.id_aluno
INNER JOIN turmas 
    ON matriculas.id_turma = turmas.id_turma;

##Mostra o nome do aluno e a turma em que ele está matriculado.
##O `INNER JOIN` junta dados de tabelas que possuem relação.

---

## 15. JOIN com curso, turma e aluno


SELECT 
    a.nome AS aluno,
    c.nome AS curso,
    t.nome AS turma,
    t.turno
FROM matriculas m
INNER JOIN alunos a 
    ON m.id_aluno = a.id_aluno
INNER JOIN turmas t 
    ON m.id_turma = t.id_turma
INNER JOIN cursos c 
    ON t.id_curso = c.id_curso;

##Mostra uma visão mais completa: aluno, curso, turma e turno.

---

## 16. LEFT JOIN — mostrar mesmo sem relação

SELECT 
    a.nome AS aluno,
    m.id_matricula
FROM alunos a
LEFT JOIN matriculas m 
    ON a.id_aluno = m.id_aluno;

##Mostra todos os alunos, mesmo aqueles que ainda não possuem matrícula.

---

## 17. CONCAT — juntar textos


SELECT 
    CONCAT(nome, ' - ', cidade) AS aluno_cidade
FROM alunos;

##Junta o nome do aluno com a cidade em uma única coluna.

---

## 18. UPPER e LOWER


SELECT UPPER(nome) AS nome_maiusculo
FROM alunos;


##Mostra os nomes dos alunos em letras maiúsculas.

---

SELECT LOWER(nome) AS nome_minusculo
FROM alunos;


##Mostra os nomes dos alunos em letras minúsculas.

---

## 19. YEAR e MONTH


SELECT 
    id_matricula,
    YEAR(data_matricula) AS ano
FROM matriculas;


##Mostra o ano da data de matrícula.

---

SELECT 
    id_matricula,
    MONTH(data_matricula) AS mes
FROM matriculas;

##Mostra o mês da data de matrícula.

---

## 20. DATEDIFF — diferença entre datas


SELECT 
    id_matricula,
    DATEDIFF(CURDATE(), data_matricula) AS dias_desde_matricula
FROM matriculas;


##Calcula quantos dias se passaram desde a matrícula até a data atual.

---

## 21. CASE — condição dentro do SELECT


SELECT 
    a.nome AS aluno,
    p.valor,
    p.status_pagamento,
    CASE
        WHEN p.status_pagamento = 'Pago' THEN 'Pagamento confirmado'
        WHEN p.status_pagamento = 'Pendente' THEN 'Aguardando pagamento'
        WHEN p.status_pagamento = 'Atrasado' THEN 'Pagamento em atraso'
        ELSE 'Situação não identificada'
    END AS situacao
FROM pagamentos p
INNER JOIN matriculas m 
    ON p.id_matricula = m.id_matricula
INNER JOIN alunos a 
    ON m.id_aluno = a.id_aluno;


##Cria uma coluna personalizada chamada `situacao`, mostrando uma mensagem conforme o status do pagamento.

---

## 22. LIMIT — limitar resultados


SELECT * FROM alunos
LIMIT 5;


##Mostra apenas os 5 primeiros alunos.

---

## 23. DISTINCT — evitar repetição


SELECT DISTINCT cidade
FROM alunos;


##Mostra as cidades cadastradas sem repetir nomes.

---

## 24. Subconsulta


SELECT nome
FROM alunos
WHERE id_aluno IN (
    SELECT id_aluno
    FROM matriculas
);


##Mostra somente os alunos que possuem matrícula registrada.

---

## 25. Consulta completa para relatório


SELECT 
    a.nome AS aluno,
    r.nome AS responsavel,
    r.parentesco,
    c.nome AS curso,
    t.nome AS turma,
    t.turno,
    m.status_matricula
FROM matriculas m
INNER JOIN alunos a 
    ON m.id_aluno = a.id_aluno
INNER JOIN aluno_responsavel ar 
    ON a.id_aluno = ar.id_aluno
INNER JOIN responsaveis r 
    ON ar.id_responsavel = r.id_responsavel
INNER JOIN turmas t 
    ON m.id_turma = t.id_turma
INNER JOIN cursos c 
    ON t.id_curso = c.id_curso;

##Gera um relatório completo com aluno, responsável, curso, turma, turno e status da matrícula.
##É aquele SELECT “chefão da fase final” — junta várias tabelas de uma vez.
