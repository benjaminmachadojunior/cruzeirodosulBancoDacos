-- Criar o banco de dados `benja`
CREATE DATABASE benja;
USE benja;

-- Criação da tabela Pessoa
CREATE TABLE pessoa (
    id_pessoa INT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(255) NOT NULL,
    sobrenome VARCHAR(255) NOT NULL,
    dataNascimento DATE NOT NULL,
    endereco TEXT NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(255) NOT NULL,
    PRIMARY KEY (id_pessoa)
);

-- Criação da tabela Aluno
CREATE TABLE aluno (
    id_aluno INT AUTO_INCREMENT NOT NULL,
    id_pessoa INT NOT NULL,
    PRIMARY KEY (id_aluno),
    FOREIGN KEY (id_pessoa) REFERENCES Pessoa(id_pessoa)
);

-- Criação da tabela Professor
CREATE TABLE professor (
    id_professor INT AUTO_INCREMENT NOT NULL,
    id_pessoa INT NOT NULL,
    disciplina VARCHAR(255) NOT NULL,
    PRIMARY KEY (id_professor),
    FOREIGN KEY (id_pessoa) REFERENCES Pessoa(id_pessoa)
);

-- Criação da tabela Materia
CREATE TABLE materia (
    id_materia INT AUTO_INCREMENT NOT NULL,
    Nome VARCHAR(255) NOT NULL,
    descricao TEXT NOT NULL,
    PRIMARY KEY (id_materia)
);

-- Criação da tabela Turma
CREATE TABLE turma (
    id_turma INT AUTO_INCREMENT NOT NULL,
    id_materia INT NOT NULL,
    id_professor INT NOT NULL,
    ano INT NOT NULL,
    semestre INT NOT NULL,
    PRIMARY KEY (id_turma),
    FOREIGN KEY (id_materia) REFERENCES Materia(id_materia),
    FOREIGN KEY (id_professor) REFERENCES Professor(id_professor)
);

-- Criação da tabela Matricula
CREATE TABLE matricula (
    id_matricula INT AUTO_INCREMENT NOT NULL,
    id_aluno INT NOT NULL,
    id_turma INT NOT NULL,
    nota DECIMAL(18,2) NOT NULL,
    PRIMARY KEY (id_matricula),
    FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno),
    FOREIGN KEY (id_turma) REFERENCES Turma(id_turma)
);
