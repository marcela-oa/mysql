CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
id bigint auto_increment, 
categoria varchar(255) NOT NULL, 
PRIMARY KEY (id)
);

INSERT INTO tb_categoria (categoria) 
VALUES ("Antibiótico");

INSERT INTO tb_categoria (categoria) 
VALUES ("Anti-inflamatório");

INSERT INTO tb_categoria (categoria) 
VALUES ("Corticóide");

INSERT INTO tb_categoria (categoria) 
VALUES ("Antiviral");

INSERT INTO tb_categoria (categoria) 
VALUES ("Analgésico");

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto (
id bigint auto_increment,
nome varchar(255) NOT NULL, 
dosagem decimal(6,2),
apresentacao varchar(255),
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_produto (nome, dosagem, apresentacao, categoria_id) 
VALUES ("Dipirona", 500.00, "Comprimidos", 5);

INSERT INTO tb_produto (nome, dosagem, apresentacao, categoria_id) 
VALUES ("Cetoprofeno", 100.00, "Comprimidos", 2);

INSERT INTO tb_produto (nome, dosagem, apresentacao, categoria_id) 
VALUES ("Dexametasona", 5.0, "Líquido", 3);

INSERT INTO tb_produto (nome, dosagem, apresentacao, categoria_id) 
VALUES ("Amoxicilina", 500.00, "Cápsulas", 1);

INSERT INTO tb_produto (nome, dosagem, apresentacao, categoria_id) 
VALUES ("Aciclovir", 200.00, "Comprimidos", 4);

INSERT INTO tb_produto (nome, dosagem, apresentacao, categoria_id) 
VALUES ("Ibuprofeno", 400.00, "Cápsulas", 5);

INSERT INTO tb_produto (nome, dosagem, apresentacao, categoria_id) 
VALUES ("Nimesulida", 100.00, "Comprimidos", 2);

INSERT INTO tb_produto (nome, dosagem, apresentacao, categoria_id) 
VALUES ("Prednisona", 20.00, "Comprimidos", 3);

ALTER TABLE tb_produto ADD valor decimal(8,2);

UPDATE tb_produto SET valor = 19.90 WHERE id = 1;
UPDATE tb_produto SET valor = 30.50 WHERE id = 2;
UPDATE tb_produto SET valor = 45.70 WHERE id = 3;
UPDATE tb_produto SET valor = 59.90 WHERE id = 4;
UPDATE tb_produto SET valor = 42.60 WHERE id = 5;
UPDATE tb_produto SET valor = 25.45 WHERE id = 6;
UPDATE tb_produto SET valor = 15.90 WHERE id = 7;
UPDATE tb_produto SET valor = 36.40 WHERE id = 8;

SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE valor > 50.00;

SELECT * FROM tb_produto WHERE valor BETWEEN 3.00 AND 60.00;

SELECT * FROM tb_produto WHERE nome LIKE "%B%";

SELECT nome, dosagem, apresentacao, valor, tb_categoria.categoria FROM tb_produto INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id;

SELECT nome, dosagem, apresentacao, valor, tb_categoria.categoria FROM tb_produto INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id WHERE tb_categoria.categoria = "Analgésico";
