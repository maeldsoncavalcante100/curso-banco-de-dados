DESCRIBE gafanhotos;

-- Alterando uma tabela existente
ALTER TABLE pessoas
ADD COLUMN profissao VARCHAR(10);


-- Removendo uma coluna 
ALTER TABLE pessoas
DROP COLUMN profissao;

-- Alterando a posição da coluna
ALTER TABLE pessoas
ADD COLUMN profissao VARCHAR(10) AFTER nome;

-- Colocando uma coluna na primeira posição

ALTER TABLE pessoas
ADD COLUMN codigo int FIRST;

-- Modificando as definições de uma coluna

ALTER TABLE pessoas
MODIFY COLUMN profissao VARCHAR(20) NOT NULL default '';


-- Modificando coluna

ALTER TABLE pessoas
CHANGE COLUMN profissao prof VARCHAR(20);

-- Renomeando tabela

ALTER TABLE pessoas
RENAME TO gafanhotos;

SELECT * FROM pessoas;


/* OUTRA TABELA */

CREATE TABLE IF NOT EXISTS cursos (
nome VARCHAR(30) NOT NULL UNIQUE,
descricao TEXT,
carga INT UNSIGNED,
totaulas INT,
ano YEAR DEFAULT '2016'
) DEFAULT CHARSET = utf8mb4;

DESC cursos;

ALTER TABLE cursos
ADD COLUMN idcurso INT FIRST;

ALTER TABLE cursos
ADD PRIMARY KEY (idcurso);