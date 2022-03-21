CREATE DATABASE db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria(
id bigint auto_increment,
departamento varchar(255) NOT NULL, 
PRIMARY KEY (id)
);

INSERT INTO tb_categoria (departamento)
VALUE ("Ferramentas");

INSERT INTO tb_categoria (departamento)
VALUE ("Materiais");

INSERT INTO tb_categoria (departamento)
VALUE ("Elétrica");

INSERT INTO tb_categoria (departamento)
VALUE ("Hidráulica");

INSERT INTO tb_categoria (departamento)
VALUE ("Pintura");

SELECT * FROM tb_categoria;

CREATE TABLE tb_produtos (
id bigint auto_increment,
nome varchar (255) NOT NULL,
marca varchar (255),
quantidade int,
valor decimal(8,2),
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_produtos (nome, marca, quantidade, valor, categoria_id)
VALUE ("Tinta Cinza", "Suvinil", 5, 39.90, 5);

INSERT INTO tb_produtos (nome, marca, quantidade, valor, categoria_id)
VALUE ("Lixa 150", "Norton", 200, 1.99, 2);

INSERT INTO tb_produtos (nome, marca, quantidade, valor, categoria_id)
VALUE ("Parafusadeira", "Bosch", 22, 150.90, 1);

INSERT INTO tb_produtos (nome, marca, quantidade, valor, categoria_id)
VALUE ("Fio de cobre flexível", "Conduceli", 100, 125.50, 3);

INSERT INTO tb_produtos (nome, marca, quantidade, valor, categoria_id)
VALUE ("Joelho 90°", "Tigre", 50, 5.50, 4);

INSERT INTO tb_produtos (nome, marca, quantidade, valor, categoria_id)
VALUE ("Chave de fenda", "Dexter", 150, 17.60, 1);

INSERT INTO tb_produtos (nome, marca, quantidade, valor, categoria_id)
VALUE ("Corrente galvanizada", "Thompson", 60, 69.98, 2);

INSERT INTO tb_produtos (nome, marca, quantidade, valor, categoria_id)
VALUE ("Massa acrílica", "Coral", 15, 82.40, 5);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor > 50.00;

SELECT * FROM tb_produtos WHERE valor BETWEEN 3 AND 60;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT nome, marca, valor, tb_categoria.departamento FROM tb_produtos INNER JOIN tb_categoria ON tb_produtos.categoria_id = tb_categoria.id;

SELECT nome, marca, valor, tb_categoria.departamento FROM tb_produtos INNER JOIN tb_categoria 
ON tb_produtos.categoria_id = tb_categoria.id WHERE tb_categoria.departamento = "Ferramentas";

