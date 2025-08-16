-- Seleciona o banco
USE Estudos;

-- Inserindo dados na tabela aluno
INSERT INTO aluno (id, nome, idade) VALUES
    (1, 'Henrique', 20),
    (2, 'Maria', 30);

-- Conferir estrutura da tabela
DESCRIBE aluno;
