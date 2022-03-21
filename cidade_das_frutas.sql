CREATE DATABASE db_cidade_das_frutas;

USE db_cidade_das_frutas;

CREATE TABLE tb_categoria(
id bigint auto_increment,
tipo varchar(255),
PRIMARY KEY (id)
);

INSERT INTO tb_categoria (tipo)
VALUE ("Ácida");

INSERT INTO tb_categoria (tipo)
VALUE ("Doce");

INSERT INTO tb_categoria (tipo)
VALUE ("Oleaginosa");

INSERT INTO tb_categoria (tipo)
VALUE ("Hiper-hídrica");

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto (
id bigint auto_increment,
nome varchar(255),
quantidade int,
valor decimal(8,2),
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_produto (nome, quantidade, valor, categoria_id)
VALUE ("Manga", 32, 7.60, 2);

INSERT INTO tb_produto (nome, quantidade, valor, categoria_id)
VALUE ("Abacate", 20, 15.90, 3);

INSERT INTO tb_produto (nome, quantidade, valor, categoria_id)
VALUE ("Laranja", 70, 2.99, 1);

INSERT INTO tb_produto (nome, quantidade, valor, categoria_id)
VALUE ("Melancia", 7, 12.50, 4);

INSERT INTO tb_produto (nome, quantidade, valor, categoria_id)
VALUE ("Coco", 12, 8.90, 3);

INSERT INTO tb_produto (nome, quantidade, valor, categoria_id)
VALUE ("Banana", 40, 7.99, 2);

INSERT INTO tb_produto (nome, quantidade, valor, categoria_id)
VALUE ("Pitaya", 10, 89.90, 1);

INSERT INTO tb_produto (nome, quantidade, valor, categoria_id)
VALUE ("Atemoia", 13, 55.90, 2);

SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE valor > 50.00;

SELECT * FROM tb_produto WHERE valor BETWEEN 3 AND 60;

SELECT * FROM tb_produto WHERE nome LIKE "%c%";

SELECT nome, valor, tb_categoria.tipo FROM tb_produto INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id;

SELECT nome, valor, tb_categoria.tipo FROM tb_produto INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id WHERE tb_categoria.tipo = "Oleaginosa";