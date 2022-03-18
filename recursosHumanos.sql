/*Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema
trabalhará com as informações dos funcionaries desta empresa.
Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.
Popule esta tabela com até 5 dados;
Faça um select que retorne os funcionaries com o salário maior do que 2000.
Faça um select que retorne os funcionaries com o salário menor do que 2000.
Ao término atualize um dado desta tabela através de uma query de atualização.*/

CREATE DATABASE db_recursosHumanos;

USE db_recursosHumanos;

CREATE TABLE tb_funcionaries (
id bigint auto_increment,
nome varchar(255) NOT NULL,
idade int,
cargo varchar(255),
salario decimal(8,2),
PRIMARY KEY (id)
);

INSERT INTO tb_funcionaries (nome, idade, cargo, salario)
VALUES ("Marcela Oliveira", 23, "Desenvolvedora", 3350.00);

INSERT INTO tb_funcionaries (nome, idade, cargo, salario)
VALUES ("Maria Julia Santos", 30, "Gerente", 4000.00);

INSERT INTO tb_funcionaries (nome, idade, cargo, salario)
VALUES ("Michelle Lopes", 32, "Supervisora", 4500.00);

INSERT INTO tb_funcionaries (nome, idade, cargo, salario)
VALUES ("Juliana Faria", 26, "Desenvolvedora", 3350.00);

INSERT INTO tb_funcionaries (nome, idade, cargo, salario)
VALUES ("Debora Ribeiro", 45, "Diretora", 10000.00);

SELECT *, CONCAT('R$ ', FORMAT(salario, 2, 'pt_BR')) AS salário FROM tb_funcionaries;

SELECT * FROM tb_funcionaries WHERE salario > 2000.00;

SELECT * FROM tb_funcionaries WHERE salario < 2000.00;

UPDATE tb_funcionaries SET salario = 1950.00 WHERE id = 4;

