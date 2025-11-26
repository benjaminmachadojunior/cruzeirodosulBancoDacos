USE benja;

-- Inserindo registros na tabela Pessoa
INSERT INTO pessoa (nome, sobrenome, dataNascimento, endereco, telefone, email) VALUES
('Clark', 'Kent', '1938-06-18', 'Metropolis Street, 1', '123-456-7890', 'clarkkent@dailyplanet.com'),
('Bruce', 'Wayne', '1939-05-27', 'Wayne Manor, Gotham', '555-400-2000', 'bruce@wayneenterprises.com'),
('Diana', 'Prince', '1941-10-21', 'Paradise Island', '111-222-3333', 'diana.prince@amazon.com'),
('Barry', 'Allen', '1956-03-19', 'Central City', '123-987-6543', 'barry.allen@ccpd.com'),
('Hal', 'Jordan', '1959-10-16', 'Coast City', '987-654-3210', 'hal.jordan@lantern.com'),
('Arthur', 'Curry', '1941-11-29', 'Atlantis', '321-654-9870', 'arthur.curry@sea.com'),
('Peter', 'Parker', '1962-08-10', 'Queens, New York', '555-123-4567', 'peter.parker@dailybugle.com'),
('Steve', 'Rogers', '1920-07-04', 'Brooklyn, New York', '555-987-6543', 'steve.rogers@usa.com'),
('Tony', 'Stark', '1963-05-29', 'Stark Tower, New York', '555-066-1987', 'tony.stark@starkindustries.com'),
('Natasha', 'Romanoff', '1984-11-22', 'Secret Location', '555-030-0897', 'natasha.romanoff@shield.com');

-- Inserindo registros na tabela Aluno
INSERT INTO aluno (id_pessoa) VALUES
(1), (2), (3), (4), (5), (6), (7), (8), (9), (10);

-- Inserindo registros na tabela Professor
INSERT INTO professor (id_pessoa, disciplina) VALUES
(1, 'Jornalismo'),
(2, 'Empreendedorismo'),
(3, 'História'),
(4, 'Ciências'),
(5, 'Exploração Espacial'),
(6, 'Biologia Marinha'),
(7, 'Fotografia'),
(8, 'Táticas Militares'),
(9, 'Engenharia e Tecnologia'),
(10, 'Espionagem');

-- Inserindo registros na tabela Materia
INSERT INTO materia (Nome, descricao) VALUES
('Jornalismo Investigativo', 'Técnicas avançadas de jornalismo investigativo.'),
('Gestão Empresarial', 'Princípios e práticas de gestão de empresas.'),
('Mitologia Grega', 'Estudo dos mitos e lendas da Grécia antiga.'),
('Forças da Natureza', 'Estudo científico das forças naturais.'),
('Viagens Espaciais', 'Teoria e prática das viagens interestelares.'),
('Ecologia Marinha', 'Estudo dos ecossistemas marinhos.'),
('Fotografia Moderna', 'Técnicas de fotografia digital.'),
('História Militar', 'Estudo das táticas e estratégias militares.'),
('Inovações Tecnológicas', 'Desenvolvimento de novas tecnologias.'),
('Operações Secretas', 'Técnicas e práticas em operações especiais.');

-- Inserindo registros na tabela Turma
INSERT INTO turma (id_materia, id_professor, ano, semestre) VALUES
(1, 1, 2023, 1),
(2, 2, 2023, 1),
(3, 3, 2023, 1),
(4, 4, 2023, 1),
(5, 5, 2023, 1),
(6, 6, 2023, 1),
(7, 7, 2023, 1),
(8, 8, 2023, 1),
(9, 9, 2023, 1),
(10, 10, 2023, 1);

-- Inserindo registros na tabela Matricula
INSERT INTO matricula (id_aluno, id_turma, nota) VALUES
(1, 1, 85.0),
(2, 2, 90.0),
(3, 3, 95.0),
(4, 4, 88.0),
(5, 5, 92.0),
(6, 6, 89.0),
(7, 7, 93.0),
(8, 8, 97.0),
(9, 9, 91.0),
(10, 10, 94.0);
