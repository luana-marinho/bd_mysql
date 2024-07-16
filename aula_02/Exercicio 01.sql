CREATE DATABASE db_rh;
USE db_rh;

CREATE TABLE tb_colaborador(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    nascimento DATE,
	telefone INT,
    salario DECIMAL (6,2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_colaborador (nome, nascimento, telefone, salario) 
VALUES ("Luis Almeida", "1997-10-7", 934812468, 1400.00),
("Marcos Oliveira", "1997-10-7", 934839485, 1800.00),
("Gabriel Marinho", "1997-10-7", 93485794, 2000.00),
("Jhonas Souza", "1997-10-7", 934823462, 2400.00),
("Narcizo Dodo", "1971-11-11", 956727325, 3400.00);

SELECT * FROM tb_colaborador;

SELECT * FROM tb_colaborador WHERE salario > 2000.00;

SELECT * FROM tb_colaborador WHERE salario < 2000.00;

UPDATE tb_colaborador SET salario = 3200.00 WHERE id = 2;













