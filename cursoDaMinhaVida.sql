CREATE DATABASE db_cursoDaMinhaVida;

USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria (
id bigint auto_increment,
categoria varchar (255),
PRIMARY KEY (id)
);

ALTER TABLE tb_categoria CHANGE categoria area varchar (255);

INSERT INTO tb_categoria (categoria)
VALUE ("Administração");

INSERT INTO tb_categoria (categoria)
VALUE ("Tecnologia");

INSERT INTO tb_categoria (categoria)
VALUE ("Saúde");

INSERT INTO tb_categoria (categoria)
VALUE ("Exatas");

SELECT * FROM tb_categoria;

CREATE TABLE tb_curso (
id bigint auto_increment,
nome varchar (255),
duracao int,
area_id bigint,
valor decimal (8,2),
PRIMARY KEY (id),
FOREIGN KEY (area_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_curso (nome, duracao, area_id, valor)
VALUE ("Gestão de projetos", 24, 1, 59.90);

INSERT INTO tb_curso (nome, duracao, area_id, valor)
VALUE ("Logica de Programação", 6, 2, 29.90);

INSERT INTO tb_curso (nome, duracao, area_id, valor)
VALUE ("Excel avançado", 8, 1, 25.90);

INSERT INTO tb_curso (nome, duracao, area_id, valor)
VALUE ("Ética no atendimento médico", 10, 3, 109.90);

INSERT INTO tb_curso (nome, duracao, area_id, valor)
VALUE ("Estatística básica", 10, 4, 74.80);

INSERT INTO tb_curso (nome, duracao, area_id, valor)
VALUE ("Iniciando no Front-End", 12, 2, 99.99);

INSERT INTO tb_curso (nome, duracao, area_id, valor)
VALUE ("Logística", 40, 1, 159.60);

INSERT INTO tb_curso (nome, duracao, area_id, valor)
VALUE ("Cuidados pós-operatórios", 80, 3, 345.80);

SELECT * FROM tb_curso;

SELECT * FROM tb_curso WHERE valor > 50.00;

SELECT * FROM tb_curso WHERE valor BETWEEN 3 AND 60;

SELECT * FROM tb_curso WHERE nome LIKE "%j%";

SELECT * FROM tb_curso INNER JOIN tb_categoria ON tb_curso.area_id = tb_categoria.id;

SELECT * FROM tb_curso INNER JOIN tb_categoria ON tb_curso.area_id = tb_categoria.id WHERE tb_categoria.area = "Tecnologia";