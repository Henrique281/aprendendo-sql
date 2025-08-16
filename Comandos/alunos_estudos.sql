-- Banco de dados
CREATE DATABASE IF NOT EXISTS Estudos;
USE Estudos;

-- ============================================================
-- Estrutura da tabela alunos
-- ============================================================
CREATE TABLE IF NOT EXISTS alunos (
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    idade INT NOT NULL CHECK (idade > 0)
);

-- ============================================================
-- Inserção de dados de exemplo
-- ============================================================
INSERT INTO alunos (nome, idade) VALUES
    ('Henrique', 18),
    ('Mario', 52),
    ('Claudio', 30),
    ('Anderson', 50),
    ('José', 80);

-- ============================================================
-- Consultas básicas
-- ============================================================

-- Visualizar todos os alunos
SELECT * FROM alunos;

-- Ordenar por ID crescente
SELECT * FROM alunos
ORDER BY id ASC;

-- Ordenar por ID decrescente
SELECT * FROM alunos
ORDER BY id DESC;

-- Contar registros
SELECT COUNT(*) AS total_alunos FROM alunos;

-- Atualizar idade de um aluno
UPDATE alunos
SET idade = 29
WHERE nome = 'Henrique';

-- Deletar aluno pelo ID
DELETE FROM alunos
WHERE id = 3;

-- ============================================================
-- Funções agregadas
-- ============================================================

-- Maior idade
SELECT MAX(idade) AS maior_idade FROM alunos;

-- Menor idade
SELECT MIN(idade) AS menor_idade FROM alunos;

-- Média de idade
SELECT AVG(idade) AS media_idade FROM alunos;

-- Soma de idades
SELECT SUM(idade) AS soma_idade FROM alunos;

-- ============================================================
-- Condições compostas
-- ============================================================

-- Alunos entre 15 e 25 anos
SELECT *
FROM alunos
WHERE idade BETWEEN 15 AND 25;

-- Alternativa usando AND
SELECT *
FROM alunos
WHERE idade >= 15 AND idade <= 25;

-- ============================================================
-- Alterações na tabela
-- ============================================================

-- Adicionar coluna curso
ALTER TABLE alunos 
ADD COLUMN curso VARCHAR(60);
