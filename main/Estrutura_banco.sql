CREATE DATABASE lista_de_chamada;

USE lista_de_chamada;

CREATE TABLE turmas (
    id_turma INT AUTO_INCREMENT PRIMARY KEY,
    nome_turma VARCHAR(60) NOT NULL,
    professor VARCHAR(30) NOT NULL
);

CREATE TABLE alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(30) NOT NULL,
    matricula VARCHAR(8) NOT NULL,
    id_turma INT,
    FOREIGN KEY (id_turma) REFERENCES turmas(id_turma)
);

CREATE TABLE chamada(

	) 
