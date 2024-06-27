CREATE DATABASE db_empresa;

USE db_empresa;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    idade INT,
    salario DECIMAL(6,2),
    departamento VARCHAR(255)
);

INSERT INTO tb_colaboradores(nome, idade, salario, departamento)
VALUES
	("Alice Silva", 30, 1500.50, "Recursos Humanos"),
    ("Bruno Pereira", 25, 1800.75, "Financeiro"),
    ("Carlos Costa", 45, 4500.00, "TI"),
    ("Daniela Souza", 28, 1980.80, "Marketing"),
    ("Eduardo Lima", 35, 3500.50, "Vendas"),
    ("Fernanda Alves", 40, 4000.90, "Logística"),
    ("Gabriel Fernandes", 50, 5000.60, "Produção"),
    ("Helena Santos", 32, 3200.40, "Compras"),
    ("Igor Rodrigues", 29, 1650.30, "Qualidade"),
    ("Julia Martins", 38, 3800.20, "Pesquisa e Desenvolvimento");

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores set salario = 2570.00, departamento = "TI" WHERE id = 1;

SELECT * FROM tb_colaboradores;
