CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT NOT NULL UNIQUE,
categoria VARCHAR(255) NOT NULL,
tutor VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT NOT NULL UNIQUE,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL,
preco DECIMAL(8,2) NOT NULL,
qtd_atual_alunos INT NOT NULL,
categorias_id BIGINT NOT NULL,
CONSTRAINT fk_categorias_produtos FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (categoria, tutor) VALUES 
('Desenvolvimento Web', 'Carlos Silva'),
('Marketing Digital', 'Maria Oliveira'),
('Gestão de Projetos', 'Ana Costa'),
('Design Gráfico', 'Ricardo Souza'),
('Programação de Apps Mobile', 'João Pereira');

INSERT INTO tb_produtos (nome, descricao, preco, qtd_atual_alunos, categorias_id) VALUES 
('Introdução ao HTML e CSS', 'Curso básico de HTML e CSS para iniciantes.', 299.99, 150, 1),
('Marketing para Redes Sociais', 'Aprenda a criar estratégias eficazes para redes sociais.', 499.00, 120, 2),
('Gestão Ágil de Projetos', 'Curso focado em metodologias ágeis para gestão de projetos.', 599.00, 100, 3),
('Design Gráfico para Iniciantes', 'Aprenda o básico do design gráfico e ferramentas essenciais.', 350.00, 200, 4),
('Criação de Apps Android', 'Curso de desenvolvimento para aplicativos Android.', 1100.00, 50, 5),
('SEO para Iniciantes', 'Introdução ao SEO para melhorar a visibilidade de sites.', 690.00, 180, 2),
('Marketing de Influência', 'Como trabalhar com influenciadores digitais em suas campanhas.', 650.00, 90, 2),
('Avançado em Python', 'Curso avançado para quem já tem experiência com Python.', 780.00, 60, 1);

SELECT * FROM tb_produtos WHERE preco > 500.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 600.00 AND 1000.00;
 
SELECT * FROM tb_produtos WHERE nome LIKE "%J%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id WHERE tb_produtos.categorias_id = 2;
