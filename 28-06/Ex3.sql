CREATE DATABASE db_farmacia;

USE db_farmacia;

CREATE TABLE tb_categoria (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_produto (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL, 
descricao VARCHAR(255),
preco DECIMAL(6,2) NOT NULL, 
quantidade INT, 
categoria_id BIGINT NOT NULL,
CONSTRAINT fk_tb_produto_tb_categoria
FOREIGN KEY (categoria_id)
REFERENCES db_farmacia.tb_categoria(id)
);

INSERT INTO tb_categoria (nome, descricao)
VALUES 
  ("Medicamentos", "Produtos farmacêuticos como comprimidos e xaropes"),
  ("Cosméticos", "Produtos de beleza e higiene pessoal"),
  ("Suplementos", "Suplementos alimentares e vitamínicos"),
  ("Infantil", "Produtos para cuidados infantis"),
  ("Primeiros Socorros", "Produtos para tratamento de primeiros socorros");

INSERT INTO tb_produto (nome, descricao, preco, quantidade, categoria_id) 
VALUES 
  ("Paracetamol", "Analgésico e antitérmico", 12.50, 100, 1),
  ("Shampoo", "Shampoo para todos os tipos de cabelo", 15.99, 50, 2),
  ("Aspirina", "Medicamento para dor de cabeça", 10.00, 200, 1),
  ("Creme Hidratante", "Creme para hidratação da pele", 55.00, 30, 2),
  ("Vitamina C", "Suplemento vitamínico", 62.00, 80, 3),
  ("Fralda Descartável", "Fralda para bebês", 45.00, 150, 4),
  ("Curativo", "Curativo adesivo", 2.00, 500, 5),
  ("Pomada Antisséptica", "Pomada para pequenos cortes e arranhões", 18.00, 60, 5);

    SELECT * FROM tb_produto WHERE preco >  50;

    SELECT * FROM tb_produto Where preco > 5 AND preco < 60;

    SELECT * FROM tb_produto WHERE nome LIKE "%c%";

    SELECT * FROM tb_produto 
    INNER JOIN tb_categoria
    ON tb_produto.categoria_id = tb_categoria.id;

    SELECT * FROM tb_produto
    INNER JOIN tb_categoria
    ON tb_produto.categoria_id = tb_categoria.id
    WHERE tb_categoria.nome = "Cosméticos";