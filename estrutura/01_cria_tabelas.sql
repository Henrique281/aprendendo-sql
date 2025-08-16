-- Seleciona o banco de estudo
CREATE DATABASE Estudos;
USE Estudos;

-- Criação da tabela aluno
CREATE TABLE aluno (
    id INT PRIMARY KEY,
    nome VARCHAR(30) NOT NULL,
    idade INT
);

-- Mostrar as tabelas existentes
SHOW TABLES;
