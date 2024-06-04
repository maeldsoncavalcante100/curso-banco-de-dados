-- Inserindo valores

INSERT INTO cursos VALUES
('1' , 'HTML4' , 'Curso de HTML5' , '40' , '37' , '2014'),
('2' , 'Algoritmos' , 'Lógica de Programação' , '20' , '15' , '2014'),
('3' , 'Photoshop' , 'Dicas de Photoshop CC' , '10' , '8' , '2014'),
('4' , 'PGP' , 'Curso de PHP para iniciantes' , '40' , '20' , '2010'),
('5' , 'Jarva' , 'Introdução à Linguagem Java' , '10' , '29' , '2000'),
('6' , 'MySQL' , 'Banco de Dados MyQSL' , '30' , '15' , '2016'),
('7' , 'Word' , 'Curso completo de Word' , '40' , '30' , '2016'),
('8' , 'Sapateando' , 'Danças Rítmicas' , '40' , '30' , '2018'),
('9' , 'Cozinha Árabe' , 'Aprenda a fazer kibe' , '40' , '30' , '2018'),
('10' , 'YouTube' , 'Gerar polêmica e ganhar escritos' , '5' , '2' , '2018');

-- Modificando linhas incorretas

UPDATE cursos
SET nome = 'HTML5'
WHERE idcurso = '1';

-- Mais de uma linha:
UPDATE cursos
SET nome = 'PHP' , ano = '2015'
WHERE idcurso = '4';

-- Tês linhas ou mais // O LIMIT limita somente o número de linhas colocado

UPDATE cursos
SET nome = 'Java' , ano = '2015' , carga = '40'
WHERE idcurso = '5'
LIMIT 1;

-- Nesse exemplo, vai alterar somente as colunas que tenham o ano de 2018

UPDATE cursos
SET  ano = '2050' , carga = '800'
WHERE ano = '2015';


UPDATE cursos
SET  ano = '2018' , carga = '0'
WHERE ano = '2050'
LIMIT 1;


-- Rmovendo uma linha

DELETE FROM cursos
WHERE idcurso = '8';

-- Apagando mais de uma linha

DELETE FROM cursos
WHERE ano = '2050'
LIMIT 2;


-- Removendo TODAS as linhas 

TRUNCATE TABLE cursos;

SELECT * FROM cursos;
