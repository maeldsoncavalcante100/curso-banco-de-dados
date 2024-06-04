USE cadastro;

-- Usando operador LIKE

SELECT * FROM cursos
WHERE nome LIKE 'P%'; -- com % no final, pega os cursos com a inicial colocada

-- Wildcards

SELECT * FROM cursos
WHERE nome LIKE '%A'; -- com % no inicio, pega os cursos com o final da letra colocada

SELECT * FROM cursos
WHERE nome LIKE '%A%'; -- Vai pegar todos os registros em que tenham A

SELECT * FROM cursos
WHERE nome NOT LIKE '%A%'; -- Vai pergar cursos que não tem a Letra A

SELECT * FROM cursos
WHERE nome  LIKE 'ph%p%';

SELECT * FROM cursos
WHERE nome  LIKE 'ph%p_'; -- usando o _, exige que tenha uma caractere

SELECT * FROM cursos
WHERE nome LIKE 'P_P%';


SELECT * FROM gafanhotos
WHERE nome LIKE 'silva%';

-- Distinguindo, Serve para diferenciar

SELECT DISTINCT nacionalidade FROM gafanhotos
ORDER BY nacionalidade;

SELECT DISTINCT carga FROM cursos
ORDER BY carga;

-- Funções de Agregação

SELECT COUNT(nome) FROM cursos;  -- COUNT serve para contar a quantidade de cursos cadastrados

SELECT COUNT(*) FROM cursos WHERE carga  > 40;

-- Max, ver qual é o máximo dentro de um campo

SELECT MAX(totaulas) FROM cursos;

SELECT MAX(carga) FROM cursos;

SELECT MAX(totaulas) FROM cursos WHERE ano = '2016'; 

-- MIN, ver o mínimo dentro de um campo

SELECT nome, MIN(totaulas) FROM cursos WHERE ano = '2016'; 


-- SUM, serve para somar

SELECT SUM(totaulas) FROM cursos WHERE ano = '2016';


-- AVG, faz tirar a média 

SELECT AVG(totaulas) FROM cursos WHERE ano = '2016';