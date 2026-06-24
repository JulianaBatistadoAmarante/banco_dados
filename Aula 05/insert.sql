USE escola_matriculas;

-- ============================================================
-- INSERTS DE EXEMPLO
-- ============================================================

INSERT INTO alunos 
(nome, cpf, data_nascimento, telefone, email, endereco, cidade, estado)
VALUES
('Ana Clara Souza', '111.111.111-11', '2008-03-15', '(47) 99999-1111', 'ana.clara@email.com', 'Rua das Flores, 100', 'Blumenau', 'SC'),
('Bruno Martins', '222.222.222-22', '2007-07-22', '(47) 99999-2222', 'bruno@email.com', 'Rua XV de Novembro, 250', 'Blumenau', 'SC'),
('Carla Oliveira', '333.333.333-33', '2009-01-10', '(47) 99999-3333', 'carla@email.com', 'Rua Amazonas, 500', 'Blumenau', 'SC');

INSERT INTO responsaveis 
(nome, cpf, telefone, email, parentesco)
VALUES
('Mariana Souza', '444.444.444-44', '(47) 98888-1111', 'mariana@email.com', 'Mãe'),
('Carlos Martins', '555.555.555-55', '(47) 98888-2222', 'carlos@email.com', 'Pai'),
('Fernanda Oliveira', '666.666.666-66', '(47) 98888-3333', 'fernanda@email.com', 'Mãe');

INSERT INTO aluno_responsavel 
(id_aluno, id_responsavel)
VALUES
(1, 1),
(2, 2),
(3, 3);

INSERT INTO cursos 
(nome, descricao, carga_horaria)
VALUES
('Desenvolvimento de Sistemas', 'Curso voltado ao desenvolvimento de aplicações web, banco de dados e programação.', 1200),
('Administração', 'Curso voltado à gestão, processos administrativos e empreendedorismo.', 1000);

INSERT INTO turmas 
(id_curso, nome, ano_letivo, turno, vagas)
VALUES
(1, 'DS-2026-A', 2026, 'Matutino', 35),
(1, 'DS-2026-B', 2026, 'Noturno', 35),
(2, 'ADM-2026-A', 2026, 'Vespertino', 40);

INSERT INTO professores 
(nome, cpf, telefone, email, area_atuacao)
VALUES
('João Pereira', '777.777.777-77', '(47) 97777-1111', 'joao@email.com', 'Programação'),
('Luciana Almeida', '888.888.888-88', '(47) 97777-2222', 'luciana@email.com', 'Banco de Dados'),
('Roberto Lima', '999.999.999-99', '(47) 97777-3333', 'roberto@email.com', 'Administração');

INSERT INTO disciplinas 
(id_curso, nome, carga_horaria)
VALUES
(1, 'Lógica de Programação', 80),
(1, 'Banco de Dados', 80),
(1, 'Desenvolvimento Web', 100),
(2, 'Gestão de Pessoas', 60),
(2, 'Empreendedorismo', 60);

INSERT INTO turma_disciplina 
(id_turma, id_disciplina, id_professor)
VALUES
(1, 1, 1),
(1, 2, 2),
(1, 3, 1),
(3, 4, 3),
(3, 5, 3);

INSERT INTO matriculas 
(id_aluno, id_turma, data_matricula, status_matricula)
VALUES
(1, 1, '2026-02-01', 'Ativa'),
(2, 1, '2026-02-01', 'Ativa'),
(3, 3, '2026-02-03', 'Ativa');

INSERT INTO pagamentos 
(id_matricula, valor, data_vencimento, data_pagamento, status_pagamento)
VALUES
(1, 250.00, '2026-03-10', '2026-03-08', 'Pago'),
(2, 250.00, '2026-03-10', NULL, 'Pendente'),
(3, 220.00, '2026-03-10', NULL, 'Pendente');

-- ============================================================
-- FIM DO SCRIPT
-- ============================================================

