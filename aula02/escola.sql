/*Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as
informações dos estudantes deste registro dessa escola.
Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos estudantes para se trabalhar com o serviço dessa escola.

Popule esta tabela com até 8 dados;
Faça um select que retorne o/as estudantes com a nota maior do que 7.
Faça um select que retorne o/as estudantes com a nota menor do que 7.
Ao término atualize um dado desta tabela através de uma query de atualização.*/

CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos (
id bigint auto_increment,
nome varchar(255) NOT NULL,
idade int,
turma int,
nota decimal(8, 2),
PRIMARY KEY (id)
);

INSERT INTO tb_alunos (nome, idade, turma, nota)
VALUE("Ana Carolina", 10, 4, 8.5);

INSERT INTO tb_alunos (nome, idade, turma, nota)
VALUE("Carlos", 7, 2, 6.2);

INSERT INTO tb_alunos (nome, idade, turma, nota)
VALUE("Maria Eduarda", 12, 5, 10.0);

INSERT INTO tb_alunos (nome, idade, turma, nota)
VALUE("Lucas", 5, 1, 2.75);

INSERT INTO tb_alunos (nome, idade, turma, nota)
VALUE("Bianca", 10, 4, 5.25);

INSERT INTO tb_alunos (nome, idade, turma, nota)
VALUE("Vitor", 8, 3, 9.75);

INSERT INTO tb_alunos (nome, idade, turma, nota)
VALUE("Gabriel", 6, 2, 6.5);

INSERT INTO tb_alunos (nome, idade, turma, nota)
VALUE("Larissa", 9, 4, 10.0);

SELECT * FROM tb_alunos;

SELECT * FROM tb_alunos WHERE nota > 7.00;

SELECT * FROM tb_alunos WHERE nota < 7.00;

UPDATE tb_alunos SET turma = 3 WHERE id = 2;