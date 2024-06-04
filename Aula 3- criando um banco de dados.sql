CREATE DATABASE cadastro;

USE cadastro;

CREATE TABLE pessoas (
nome VARCHAR(30),
idade TINYINT(3),
sexo CHAR(1),
peso FLOAT,
altura FLOAT,
nacionalidade VARCHAR(30)
);

DESCRIBE pessoas;