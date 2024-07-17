CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT,
tamanho varchar(15),
categoria VARCHAR(15) NOT NULL,
PRIMARY KEY(ID)
);

CREATE TABLE tb_pizza(
	id BIGINT AUTO_INCREMENT,
    sabor VARCHAR(255) NOT NULL,
    quantidade INT,
    validade DATE,
    preco DECIMAL NOT NULL,
    PRIMARY KEY (id)
);


ALTER TABLE tb_pizza ADD id_categoria BIGINT;

ALTER TABLE tb_pizza ADD CONSTRAINT fk_pizza_categoria 
FOREIGN KEY (id_categoria) REFERENCES tb_categoria (id);

INSERT INTO tb_categoria (tamanho, categoria) 
values ("Grande", "Salgada"),
("Pequena", "Doce"),
("Grande", "Vegana"),
("Grande", "Free Gluten"),
("Pequena", "Free Lactose");

select * from tb_pizza;

INSERT INTO tb_pizza (sabor, quantidade, validade, preco, id_categoria) 
values ("Mussarela", 10, "2024-07-20", 40, 1),
("Portuguesa", 15, "2024-07-25", 50, 1),
("Chocolate", 5, "2024-07-30", 60, 2),
("Calabresa", 9, "2024-07-10", 35, 5),
("Bacon", 7, "2024-07-5", 50, 1),
("Carne Seca", 3, "2024-07-7", 70, 4),
("Frango", 12, "2024-07-8", 45, 1),
("Brocolis", 16, "2024-07-30", 65, 3);

select * from tb_pizza where preco > 45;

select * from tb_pizza where preco between 50 and 100;

SELECT * FROM tb_pizza WHERE sabor LIKE "M%";

select sabor, quantidade, validade, preco, id_categoria from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.id_categoria;

select sabor, quantidade, validade, preco, id_categoria from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.id_categoria 
Where tb_categoria.categoria = "Doce";









