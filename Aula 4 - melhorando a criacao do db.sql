create database cadastro
default character set utf8mb4
default collate utf8mb4_general_ci;

USE cadastro;

CREATE TABLE pessoas (
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(30) NOT NULL,
nascimento DATE,
sexo ENUM ('M', 'F'),
peso DECIMAL(5,2),
altura DECIMAL (3,2),
nacionalidade VARCHAR(20) DEFAULT  'Brasil',
PRIMARY KEY (id)
)default charset = utf8mb4;

drop table pessoas;