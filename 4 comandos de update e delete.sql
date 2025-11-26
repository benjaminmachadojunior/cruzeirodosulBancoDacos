use benja;
-- Atualizar o endereço e telefone de Tony Stark
UPDATE pessoa
SET endereco = 'Avengers Tower, New York', telefone = '555-IRON-MAN'
WHERE nome = 'Tony' AND sobrenome = 'Stark';

-- Atualizar o email de Steve Rogers
UPDATE pessoa
SET email = 'captain.steve@avengers.com'
WHERE nome = 'Steve' AND sobrenome = 'Rogers';

-- Atualizar a disciplina ensinada por Natasha Romanoff
UPDATE professor
SET disciplina = 'Cybersecurity and Intelligence'
WHERE id_pessoa = (SELECT id_pessoa FROM Pessoa WHERE nome = 'Natasha' AND sobrenome = 'Romanoff');


-- Deletar matrículas de um aluno específico
DELETE FROM matricula
WHERE id_aluno = (SELECT id_aluno FROM Aluno WHERE id_pessoa = (SELECT id_pessoa FROM Pessoa WHERE nome = 'Steve' AND sobrenome = 'Rogers'));

-- Deletar um aluno que já não está ativo na tabela Aluno com base em id
DELETE FROM aluno
WHERE id_pessoa = (SELECT id_pessoa FROM Pessoa WHERE nome = 'Steve' AND sobrenome = 'Rogers');

-- Deletar uma pessoa da tabela Pessoa cujo email contém 'shield'
DELETE FROM pessoa
WHERE email LIKE '%@steve@avengers.com';


