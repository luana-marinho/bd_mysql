CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    nome_produto VARCHAR(255) NOT NULL,
    quantidade INT,
	tipo VARCHAR(255),
    valor DECIMAL (6,2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos (nome_produto, quantidade, tipo, valor) 
VALUES ("Perfume Importado", 10, "Perfume", 800.00),
("Relogio importado", 5, "Acessório", 1500.00),
("Batom", 3 , "Maquiagem", 30.00),
("Colar", 10, "Acessório", 45.00),
("Brincos", 6 , "Acessório" , 120.00),
("Perfume Nacional", 9 , "Perfume" , 100.00),
("Blush", 5 , "Maquiagem" , 60.00),
("Blush", 5 , "Maquiagem" , 60.00);

SELECT * FROM tb_produtos WHERE valor > 500.00;

SELECT * FROM tb_produtos WHERE valor < 500.00;

UPDATE tb_produtos SET tipo =  "Cosmetico" WHERE id = 3;

SELECT * FROM tb_produtos;






