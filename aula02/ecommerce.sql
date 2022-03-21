/*Crie um banco de dados para um e commerce, onde o sistema trabalhará com as
informações dos produtos deste ecommerce.
Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
Popule esta tabela com até 8 dados;
Faça um select que retorne os produtos com o valor maior do que 500.
Faça um select que retorne os produtos com o valor menor do que 500.
Ao término atualize um dado desta tabela através de uma query de atualização.*/

CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos (
id bigint auto_increment,
nome varchar(255) NOT NULL,
cor varchar(255),
qntEstoque int, 
preco decimal(8, 2),
PRIMARY KEY (id)
);

INSERT INTO tb_produtos (nome, cor, qntEstoque, preco)
VALUE("Camiseta oversized", "branca", 20, 150.00);

INSERT INTO tb_produtos (nome, cor, qntEstoque, preco)
VALUE("Vestido midi", "verde musgo", 20, 550.00);

INSERT INTO tb_produtos (nome, cor, qntEstoque, preco)
VALUE("Calça cargo", "cinza", 40, 380.95);

INSERT INTO tb_produtos (nome, cor, qntEstoque, preco)
VALUE("Camisa social", "preta", 50, 750.90);

INSERT INTO tb_produtos (nome, cor, qntEstoque, preco)
VALUE("Vestido gala", "vermelho", 10, 1150.50);

INSERT INTO tb_produtos (nome, cor, qntEstoque, preco)
VALUE("Saia lápis", "preta", 50, 200.90);

INSERT INTO tb_produtos (nome, cor, qntEstoque, preco)
VALUE("Calça wideleg", "jeans lavado", 80, 250.30);

INSERT INTO tb_produtos (nome, cor, qntEstoque, preco)
VALUE("Meia cano médio", "estampada", 100, 59.99);

SELECT *, CONCAT('R$ ', FORMAT(preco, 2, 'pt_BR')) AS preço FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500.00;

SELECT * FROM tb_produtos WHERE preco < 500.00;

UPDATE tb_produtos SET qntEstoque = 20 WHERE id = 8;


