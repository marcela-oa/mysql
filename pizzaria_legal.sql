DROP DATABASE db_pizzaria_legal;

CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria (
id bigint auto_increment,
tipoSabor varchar (255),
primary key (id)
);

INSERT INTO tb_categoria (tipoSabor)
VALUE ("Salgada");

INSERT INTO tb_categoria (tipoSabor)
VALUE ("Doce");

INSERT INTO tb_categoria (tipoSabor)
VALUE ("Vegetariana");

INSERT INTO tb_categoria (tipoSabor)
VALUE ("Especial");

CREATE TABLE tb_pizza (
id bigint auto_increment,
sabor varchar (255),
tipoSabor_id bigint,
tamanho varchar (255),
valor decimal (8,2),
primary key (id),
foreign key (tipoSabor_id) references tb_categoria(id)
);

INSERT INTO tb_pizza (sabor, tipoSabor_id, tamanho, valor)
VALUE ("Marguerita", 3, "Gigante", 59.90);

INSERT INTO tb_pizza (sabor, tipoSabor_id, tamanho, valor)
VALUE ("4 queijos", 3, "Média", 35.80);

INSERT INTO tb_pizza (sabor, tipoSabor_id, tamanho, valor)
VALUE ("Calabresa", 1, "Grande", 45.80);

INSERT INTO tb_pizza (sabor, tipoSabor_id, tamanho, valor)
VALUE ("Brigadeiro", 2, "Média", 54.60);

INSERT INTO tb_pizza (sabor, tipoSabor_id, tamanho, valor)
VALUE ("Batata-frita", 4, "Média", 85.90);

INSERT INTO tb_pizza (sabor, tipoSabor_id, tamanho, valor)
VALUE ("Romeu e Julieta", 2, "Broto", 27.40);

INSERT INTO tb_pizza (sabor, tipoSabor_id, tamanho, valor)
VALUE ("Portuguesa", 1, "Broto", 31.50);

INSERT INTO tb_pizza (sabor, tipoSabor_id, tamanho, valor)
VALUE ("Rúcula com tomate seco", 4, "Média", 59.90);

SELECT * FROM tb_pizza;

SELECT * FROM tb_pizza WHERE valor > 50;

SELECT * FROM tb_pizza WHERE valor BETWEEN 3 AND 60;

SELECT * FROM tb_pizza WHERE sabor LIKE "%J%";

SELECT * FROM tb_pizza INNER JOIN tb_categoria ON tb_pizza.tipoSabor_id = tb_categoria.id;

SELECT * FROM tb_pizza INNER JOIN tb_categoria ON tb_pizza.tipoSabor_id = tb_categoria.id WHERE tb_categoria.tipoSabor = "Doce";