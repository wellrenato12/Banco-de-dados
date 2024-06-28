CREATE DATABASE db_curso_ead;

USE db_curso_ead;

CREATE TABLE tb_categoria (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_curso (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL, 
descricao TEXT,
preco DECIMAL(8,2) NOT NULL, 
carga_horaria INT NOT NULL,
categoria_id BIGINT NOT NULL,
CONSTRAINT fk_tb_produto_tb_categoria
FOREIGN KEY (categoria_id)
REFERENCES db_farmacia.tb_categoria(id)
);

INSERT INTO tb_categoria (nome, descricao)
VALUES 
    ('Programação', 'Cursos relacionados a programação e desenvolvimento de software'),
    ('Design Gráfico', 'Cursos de design e criação gráfica'),
    ('Marketing Digital', 'Cursos de marketing e estratégias digitais'),
    ('Administração', 'Cursos de gestão e administração de empresas'),
    ('Idiomas', 'Cursos de idiomas estrangeiros');

INSERT INTO tb_curso (nome, descricao, preco, carga_horaria, categoria_id) 
VALUES 
    ('Curso de Python', 'Aprenda Python do básico ao avançado', 120.00, 40, 1),
    ('Curso de Photoshop', 'Edição de imagens e design gráfico', 90.00, 30, 2),
    ('Curso de Marketing Digital', 'Estratégias e ferramentas de marketing online', 150.00, 50, 3),
    ('Curso de Gestão Empresarial', 'Princípios básicos de administração', 80.00, 20, 4),
    ('Curso de Inglês Intermediário', 'Aprimore suas habilidades em inglês', 750.00, 60, 5),
    ('Curso de Java', 'Fundamentos e técnicas avançadas de JavaScript', 100.00, 35, 1),
    ('Curso de Illustrator', 'Desenvolvimento de ilustrações vetoriais', 110.00, 40, 2),
    ('Curso de SEO', 'Otimização para motores de busca', 130.00, 45, 3);

    SELECT * FROM tb_curso WHERE preco >  500;

    SELECT * FROM tb_curso Where preco > 600 AND preco < 1000;

    SELECT * FROM tb_curso WHERE nome LIKE "%J%";

    SELECT * FROM tb_curso 
    INNER JOIN tb_categoria
    ON tb_curso.categoria_id = tb_categoria.id;

    SELECT * FROM tb_curso
    INNER JOIN tb_categoria
    ON tb_curso.categoria_id = tb_categoria.id 
    WHERE tb_categoria.nome = "Programação";