CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_pizza (
id BIGINT auto_increment PRIMARY KEY,
nome varchar(255) not null, 
descricao varchar(255),
preco decimal(6,2) not null, 
tamanho varchar(20), 
categoria_id BIGINT NOT NULL,
CONSTRAINT fk_tb_pizza_tb_categoria
FOREIGN KEY (categoria_id)
REFERENCES db_pizzaria_legal.tb_categoria(id)
);

INSERT INTO tb_categoria (nome, descricao)
VALUES 
("Tradicional", "Pizzas com ingredientes tradicionais"),
("Especial", "Pizzas com ingredientes especiais"),
("Vegana", "Pizzas feitas sem ingredientes de origem animal"),
("Doce", "Pizzas com sabores doces"),
("Premium", "Pizzas com ingredientes premium");

INSERT INTO tb_pizza (nome, descricao, preco, tamanho, categoria_id) 
VALUES 
("Mussarela", "Mussarela e tomate", 68.00, "Média - 6 pedaços", 1),
("Frango com Catupiry", "Frango, mussarela e catupiry", 85.00, "Grande - 8 pedaços", 2),
("Chocolate", "Mussarela e chocolate", 32.00, "Broto - 4 pedaços", 4),
("Brócolis", "Mussarela vegana e Brócolis", 89.00, "Grande - 8 pedaços", 3), 
("Margherita", "Mussarela,  manjericão fresco e azeite", 101.00, "Família - 16 pedaços", 5), 
("Calabresa", "Calabresa, queijo e requeijão", 91.00, "Grande - 8 pedaços",2),
("Doce de leite", "Doce de leite com banana", 37.00, "Broto - 4 pedaços", 4),
("Chocolate com Morango", "Chocolate com morango", 45.00, "Broto - 4 pedaços", 4);

    SELECT * FROM tb_pizza WHERE preco >  45;

    SELECT * FROM tb_pizza Where preco > 50 AND preco < 100;

    SELECT * FROM tb_pizza WHERE nome LIKE "%M%";

    SELECT * FROM tb_pizza 
    INNER JOIN tb_categoria
    ON tb_pizza.categoria_id = tb_categoria.id;

    SELECT * FROM tb_pizza
    INNER JOIN tb_categoria
    ON tb_pizza.categoria_id = tb_categoria.id 
    WHERE tb_categoria.nome = "doce";