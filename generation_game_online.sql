CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
id bigint AUTO_INCREMENT,
classe varchar(255) NOT NULL,
arma varchar(255),
PRIMARY KEY (id)
);

INSERT INTO tb_classe (classe, arma)
VALUE ("Guerreiro", "Espada longa");

INSERT INTO tb_classe (classe, arma)
VALUE ("Ladino", "Adaga");

INSERT INTO tb_classe (classe, arma)
VALUE ("Arqueiro", "Arco e flecha");

INSERT INTO tb_classe (classe, arma)
VALUE ("Bárbaro", "Martelo");

INSERT INTO tb_classe (classe, arma)
VALUE ("Druída", "Cajado");

SELECT * FROM tb_classe;

CREATE TABLE tb_personagem (
id bigint auto_increment,
nome varchar(255) NOT NULL,
magia boolean,
ataque int,
defesa int, 
classe_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe(id)
);

INSERT INTO tb_personagem (nome, magia, ataque, defesa, classe_id)
VALUE ("Ellcrys", true, 3000, 1000, 5);

INSERT INTO tb_personagem (nome, magia, ataque, defesa, classe_id)
VALUE ("Emen", false, 2000, 2000, 3);

INSERT INTO tb_personagem (nome, magia, ataque, defesa, classe_id)
VALUE ("Grog", false, 5000, 2000, 4);

INSERT INTO tb_personagem (nome, magia, ataque, defesa, classe_id)
VALUE ("Power", true, 3000, 2000, 2);

INSERT INTO tb_personagem (nome, magia, ataque, defesa, classe_id)
VALUE ("Akta", false, 1000, 3000, 1);

INSERT INTO tb_personagem (nome, magia, ataque, defesa, classe_id)
VALUE ("Ella", true, 500, 800, 3);

INSERT INTO tb_personagem (nome, magia, ataque, defesa, classe_id)
VALUE ("Kriv", false, 1500, 3000, 2);

INSERT INTO tb_personagem (nome, magia, ataque, defesa, classe_id)
VALUE ("Daar", true, 1800, 2300, 5);

SELECT * FROM tb_personagem;

SELECT * FROM tb_personagem WHERE ataque > 2000;

SELECT * FROM tb_personagem WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagem WHERE nome LIKE "%C%";

SELECT nome, magia, ataque, defesa, tb_classe.classe FROM tb_personagem INNER JOIN tb_classe ON tb_personagem.classe_id = tb_classe.id;

SELECT nome, magia, ataque, defesa, tb_classe.classe FROM tb_personagem INNER JOIN tb_classe ON tb_personagem.classe_id = tb_classe.id WHERE tb_classe.classe = "Druída";