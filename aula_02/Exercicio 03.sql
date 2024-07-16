CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_estudante(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    nascimento DATE,
	serie INT,
    nota DECIMAL (6,2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_estudante (nome, nascimento, serie, nota) 
VALUES ("Luis Almeida", "1997-10-7", 3 , 10.00),
("Marcos Oliveira", "1990-5-15", 2 , 6.00),
("Gabriel Marinho", "1995-6-8", 1 , 7.00),
("Jhonas Souza", "2000-2-7", 2, 5.00),
("Narcizo Dodo", "1971-11-11", 1 , 4.00),
("Letícia Oliveira", "1990-11-19", 3, 8.00),
("Isabele Rodrigues", "1971-4-11", 2, 2.5),
("Amanda Castro ", "1998-7-11", 1, 4.8);

SELECT * FROM tb_estudante WHERE nota > 7.00;

SELECT * FROM tb_estudante WHERE nota < 7.00;

UPDATE tb_estudante SET nota =  10.00 WHERE id = 6;

SELECT * FROM tb_estudante;





