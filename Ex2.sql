CREATE DATABASE db_eCommerce;

USE db_eCommerce;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT,
    preco DECIMAL(6,2) NOT NULL,
    quantidade INT NOT NULL
);

INSERT INTO tb_produtos(nome, descricao, preco, quantidade)
VALUES
	("Smartphone Samsung Galaxy S21", "Smartphone Samsung com 128GB de armazenamento e câmera de 64MP", 999.99, 50),
    ("Notebook Dell Inspiron 15", "Notebook Dell com processador Intel i5, 8GB RAM e 256GB SSD", 999.00, 20),
    ("Tablet Samsung Galaxy Tab", "Tablet Samsung com tela de 10.4 polegadas e 64GB de armazenamento", 899.00, 30),
    ("Smartwatch Xiaomi Mi Band 6", "Smartwatch Xiaomi com monitoramento de saúde e GPS", 299.99, 75),
    ("Fone de Ouvido JBL Tune 500BT", "Fone de ouvido JBL Bluetooth com som de alta qualidade", 199.99, 100),
    ("Câmera Canon EOS Rebel T7", "Câmera Canon DSLR com sensor APS-C de 24MP", 999.99, 10),
    ("Console Xbox Series S", "Console de videogame Microsoft Xbox Series S com 512GB SSD", 999.00, 25),
    ("Drone DJI Mini 2", "Drone DJI com câmera 4K e 31 minutos de tempo de voo", 999.99, 15),
    ("Monitor AOC 24G2", "Monitor AOC de 24 polegadas com taxa de atualização de 144Hz", 899.99, 40),
    ("Roteador TP-Link Archer C6", "Roteador TP-Link dual-band com tecnologia MU-MIMO", 199.99, 60);
    
SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 699.00 WHERE id = 2;

SELECT * FROM tb_produtos;
