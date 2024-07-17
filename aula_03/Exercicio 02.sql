CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT,
categoria VARCHAR(255),
fornecedor VARCHAR(255),
PRIMARY KEY(ID)
);

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    tipo VARCHAR(255) NOT NULL,
    quantidade INT,
    validade DATE,
    preco DECIMAL NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE tb_produtos ADD id_categoria BIGINT;

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categoria 
FOREIGN KEY (id_categoria) REFERENCES tb_categoria (id);

INSERT INTO tb_categoria (categoria, fornecedor) 
values ("Bovina", "SBT Carnes"),
("Suina", "Friboi"),
("Aves", "VEG Carnes"),
("Frutos do Mar", "Mar da Alegria"),
("Peixe", "JBL peixes");

select * from tb_categoria;

INSERT INTO tb_produtos (tipo, quantidade, validade, preco, id_categoria) 
values ("Linguiça", 10, "2024-07-20", 25, 2),
("Picanha", 15, "2024-07-25", 100, 1),
("Bacon", 5, "2024-07-30", 30, 2),
("Cavalinha", 9, "2024-07-10", 50, 5),
("Contra Filé", 7, "2024-07-5", 50, 1),
("Lula", 3, "2024-07-7", 120, 4),
("Frango", 12, "2024-07-8", 45, 3),
("Camarão", 16, "2024-07-30", 65, 4);

select * from tb_produtos where preco > 50;

select * from tb_produtos where preco between 100 and 150;

SELECT * FROM tb_produtos WHERE tipo LIKE "C%";

select tipo, quantidade, validade, preco, id_categoria from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.id_categoria;

select tipo, quantidade, validade, preco, id_categoria from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.id_categoria 
Where tb_categoria.categoria = "Aves";