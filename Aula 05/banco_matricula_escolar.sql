-- ============================================================
-- BANCO DE DADOS: Sistema de Matrícula Escolar
-- SGBD: MySQL
-- Autor: Gerado para fins educacionais
-- ============================================================

DROP DATABASE IF EXISTS escola_matriculas;
CREATE DATABASE escola_matriculas
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

USE escola_matriculas;

-- ============================================================
-- TABELA: alunos
-- Armazena os dados dos alunos da escola
-- ============================================================

CREATE TABLE alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    data_nascimento DATE NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100),
    endereco VARCHAR(150),
    cidade VARCHAR(80),
    estado CHAR(2),
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ============================================================
-- TABELA: responsaveis
-- Armazena os dados dos responsáveis pelos alunos
-- ============================================================

CREATE TABLE responsaveis (
    id_responsavel INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(100),
    parentesco VARCHAR(50) NOT NULL
);

-- ============================================================
-- TABELA: aluno_responsavel
-- Relaciona alunos e responsáveis
-- Um aluno pode ter mais de um responsável
-- Um responsável pode estar vinculado a mais de um aluno
-- ============================================================

CREATE TABLE aluno_responsavel (
    id_aluno INT NOT NULL,
    id_responsavel INT NOT NULL,
    PRIMARY KEY (id_aluno, id_responsavel),
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
    FOREIGN KEY (id_responsavel) REFERENCES responsaveis(id_responsavel)
);

-- ============================================================
-- TABELA: cursos
-- Armazena os cursos oferecidos pela escola
-- ============================================================

CREATE TABLE cursos (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    carga_horaria INT NOT NULL,
    ativo BOOLEAN DEFAULT TRUE
);

-- ============================================================
-- TABELA: turmas
-- Armazena as turmas dos cursos
-- ============================================================

CREATE TABLE turmas (
    id_turma INT AUTO_INCREMENT PRIMARY KEY,
    id_curso INT NOT NULL,
    nome VARCHAR(50) NOT NULL,
    ano_letivo YEAR NOT NULL,
    turno ENUM('Matutino', 'Vespertino', 'Noturno', 'Integral') NOT NULL,
    vagas INT NOT NULL,
    FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
);

-- ============================================================
-- TABELA: professores
-- Armazena os professores da escola
-- ============================================================

CREATE TABLE professores (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100),
    area_atuacao VARCHAR(100)
);

-- ============================================================
-- TABELA: disciplinas
-- Armazena as disciplinas de cada curso
-- ============================================================

CREATE TABLE disciplinas (
    id_disciplina INT AUTO_INCREMENT PRIMARY KEY,
    id_curso INT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    carga_horaria INT NOT NULL,
    FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
);

-- ============================================================
-- TABELA: turma_disciplina
-- Relaciona turmas, disciplinas e professores
-- ============================================================

CREATE TABLE turma_disciplina (
    id_turma_disciplina INT AUTO_INCREMENT PRIMARY KEY,
    id_turma INT NOT NULL,
    id_disciplina INT NOT NULL,
    id_professor INT NOT NULL,
    FOREIGN KEY (id_turma) REFERENCES turmas(id_turma),
    FOREIGN KEY (id_disciplina) REFERENCES disciplinas(id_disciplina),
    FOREIGN KEY (id_professor) REFERENCES professores(id_professor)
);

-- ============================================================
-- TABELA: matriculas
-- Registra a matrícula do aluno em uma turma
-- ============================================================

CREATE TABLE matriculas (
    id_matricula INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT NOT NULL,
    id_turma INT NOT NULL,
    data_matricula DATE NOT NULL,
    status_matricula ENUM('Ativa', 'Cancelada', 'Concluída', 'Trancada') DEFAULT 'Ativa',
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
    FOREIGN KEY (id_turma) REFERENCES turmas(id_turma),
    UNIQUE (id_aluno, id_turma)
);

-- ============================================================
-- TABELA: pagamentos
-- Registra pagamentos relacionados às matrículas
-- ============================================================

CREATE TABLE pagamentos (
    id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    id_matricula INT NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    data_vencimento DATE NOT NULL,
    data_pagamento DATE,
    status_pagamento ENUM('Pendente', 'Pago', 'Atrasado', 'Cancelado') DEFAULT 'Pendente',
    FOREIGN KEY (id_matricula) REFERENCES matriculas(id_matricula)
);

-- ============================================================
-- FIM DO SCRIPT
-- ============================================================
