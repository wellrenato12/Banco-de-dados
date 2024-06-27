CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    nota DECIMAL(4,2) NOT NULL,
    ano INT,
    professor VARCHAR(255) NOT NULL
);

INSERT INTO tb_estudantes(nome, nota, ano, professor)
VALUES
    ("Caio", 7, 2, "Joana"),
    ("Maria", 10, 3, "Guilherme"),
    ("Pedro", 4.2, 3, "Guilherme"),
    ("Carlos", 4.25, 3, "Guilherme"),
    ("Vanessa", 8.7, 1, "Gisele"),
    ("Lucas", 6.8, 2, "Joana"),
    ("Letícia", 7, 1, "Gisele"),
    ("Larissa", 7.5, 1, "Gisele"),
    ("Bruno", 8.5, 2, "Joana"),
    ("Camila", 3, 3, "Guilherme");
    
SELECT * FROM tb_estudantes WHERE nota > 7;

SELECT * FROM tb_estudantes WHERE nota < 7;

UPDATE tb_estudantes SET nota = 10 WHERE id = 1;

SELECT * FROM tb_estudantes;