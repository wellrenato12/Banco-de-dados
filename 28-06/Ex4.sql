CREATE DATABASE db_acougue;

USE db_acougue;

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
  ("Carnes Bovinas", "Produtos de carne bovina"),
  ("Carnes Suínas", "Produtos de carne suína"),
  ("Carnes Aves", "Produtos de carne de aves"),
  ("Carnes Exóticas", "Produtos de carnes exóticas"),
  ("Carnes Ovinas", "Produtos de carne ovina");

INSERT INTO tb_produto (nome, descricao, preco, quantidade, categoria_id) 
VALUES 
  ("Picanha", "Corte nobre de carne bovina", 70.00, 20, 1),
  ("Costela Suína", "Corte suculento de costela suína", 30.00, 15, 2),
  ("Filé de Frango", "Peito de frango sem osso", 15.00, 50, 3),
  ("Carne de Javali", "Carne exótica de javali", 200.00, 5, 4),
  ("Paleta de Cordeiro", "Corte saboroso de cordeiro", 60.00, 10, 5),
  ("Maminha", "Corte de carne bovina macio", 45.00, 25, 1),
  ("Linguiça Suína", "Linguiça feita de carne suína", 20.00, 40, 2),
  ("Asa de Frango", "Corte de asa de frango", 12.00, 60, 3);

    SELECT * FROM tb_produto WHERE preco >  50;

    SELECT * FROM tb_produto Where preco > 50 AND preco < 150;

    SELECT * FROM tb_produto WHERE nome LIKE "%c%";

    SELECT * FROM tb_produto 
    INNER JOIN tb_categoria
    ON tb_produto.categoria_id = tb_categoria.id;

    SELECT * FROM tb_produto
    INNER JOIN tb_categoria
    ON tb_produto.categoria_id = tb_categoria.id 
    WHERE tb_categoria.nome = "Carnes Aves";