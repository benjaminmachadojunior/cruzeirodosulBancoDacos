use benja;

SELECT * FROM Pessoa
WHERE sobrenome = 'Kent';

SELECT nome, sobrenome, dataNascimento FROM Pessoa
ORDER BY dataNascimento ASC;

SELECT P.nome, P.sobrenome, M.nota FROM Pessoa P
JOIN Aluno A ON P.id_pessoa = A.id_pessoa
JOIN Matricula M ON A.id_aluno = M.id_aluno
ORDER BY M.nota DESC
LIMIT 5;

SELECT P.nome AS Nome_Aluno, P.sobrenome AS Sobrenome_Aluno, Pr.disciplina
FROM Aluno A
JOIN Pessoa P ON A.id_pessoa = P.id_pessoa
JOIN Matricula M ON A.id_aluno = M.id_aluno
JOIN Turma T ON M.id_turma = T.id_turma
JOIN Professor Pr ON T.id_professor = Pr.id_professor
JOIN Pessoa P2 ON Pr.id_pessoa = P2.id_pessoa;

SELECT P.nome, P.sobrenome, Ma.Nome AS Materia, M.nota
FROM Matricula M
JOIN Aluno A ON M.id_aluno = A.id_aluno
JOIN Pessoa P ON A.id_pessoa = P.id_pessoa
JOIN Turma T ON M.id_turma = T.id_turma
JOIN Materia Ma ON T.id_materia = Ma.id_materia
WHERE Ma.Nome = 'Jornalismo Investigativo';
