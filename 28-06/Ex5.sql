CREATE DATABASE db_material_construcao;

USE db_material_construcao;

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
    ('Tintas', 'Produtos para pintura de paredes e superfícies'),
    ('Ferramentas', 'Ferramentas diversas para construção'),
    ('Elétrica', 'Materiais elétricos para instalações'),
    ('Hidráulica', 'Tubos e conexões para instalações hidráulicas'),
    ('Madeiras', 'Madeiras para construção e acabamento');

INSERT INTO tb_produto (nome, descricao, preco, quantidade, categoria_id)
VALUES
    ('Tinta Acrílica Branca', 'Tinta acrílica para paredes', 50.00, 100, 1),
    ('Martelo de Carpinteiro', 'Martelo para trabalhos de carpintaria', 35.00, 50, 2),
    ('Fio Elétrico 2,5mm²', 'Rolo com 100 metros', 180.00, 20, 3),
    ('Conexão de PVC 50mm', 'Conexão para tubos de PVC', 5.00, 200, 4),
    ('Viga de Madeira 2x4', 'Madeira de pinho tratada', 25.00, 80, 5),
    ('Tinta Epóxi', 'Tinta para pisos e superfícies metálicas', 120.00, 30, 1),
    ('Furadeira de Impacto', 'Furadeira para trabalhos pesados', 280.00, 10, 2),
    ('Disjuntor 15A', 'Disjuntor para proteção elétrica', 15.00, 100, 3);

    SELECT * FROM tb_produto WHERE preco >  100;

    SELECT * FROM tb_produto Where preco > 70 AND preco < 150;

    SELECT * FROM tb_produto WHERE nome LIKE "%c%";

    SELECT * FROM tb_produto 
    INNER JOIN tb_categoria
    ON tb_produto.categoria_id = tb_categoria.id;

    SELECT * FROM tb_produto
    INNER JOIN tb_categoria
    ON tb_produto.categoria_id = tb_categoria.id 
    WHERE tb_categoria.nome = "Hidráulica";