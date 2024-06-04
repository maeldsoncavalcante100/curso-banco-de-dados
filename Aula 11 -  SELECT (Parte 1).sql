USE cadastro;

-- Ordenação Crescente
SELECT * FROM cursos
ORDER BY nome;

-- Ordenação Decrescente
SELECT * FROM cursos
ORDER BY nome DESC;


-- Selecionando Colunas

SELECT nome, carga, ano FROM cursos
ORDER BY nome;

-- Selecionando linhas

SELECT * FROM cursos
WHERE ano = '2016'
ORDER BY nome;

-- Selecionando linhas e coliunas

SELECT nome, descricao FROM cursos
WHERE ano <= '2025'
ORDER BY nome;

-- Selecionando intervalos 

SELECT ano, nome  FROM cursos
WHERE  ano BETWEEN 2014 AND 2018
ORDER BY ano DESC, nome ASC;

-- Selecionado valores

SELECT nome, descricao, ano FROM cursos
WHERE ano IN ('2014', '2016', '2020')
ORDER BY ano DESC, nome;


-- Combinando testes

SELECT nome, carga, totaulas FROM cursos
WHERE carga > 35 AND totaulas <30
ORDER BY nome;
















