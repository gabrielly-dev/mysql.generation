CREATE DATABASE db_cidade_dos_vegetais;

USE db_cidade_dos_vegetais;

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT NOT NULL UNIQUE,
categoria VARCHAR(255) NOT NULL,
marca VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT NOT NULL UNIQUE,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL,
preco DECIMAL(8,2) NOT NULL,
validade DATE NOT NULL,
categorias_id BIGINT NOT NULL,
CONSTRAINT fk_categorias_produtos FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (categoria, marca) VALUES
('Frutas', 'Fazenda Verde'),
('Legumes', 'Horta Natural'),
('Verduras', 'Campo Fresco'),
('Grãos', 'Sementes Puras'),
('Laticínios', 'Leite Bom');

INSERT INTO tb_produtos (nome, descricao, preco, validade, categorias_id) VALUES
('Maçã', 'Maçã vermelha fresca', 45.00, '2025-03-10', 1),
('Banana', 'Banana nanica madura', 30.00, '2025-03-15', 1),
('Cenoura', 'Cenoura orgânica', 60.00, '2025-03-12', 2),
('Alface', 'Alface crespa fresca', 55.00, '2025-03-09', 3),
('Arroz Integral', 'Arroz 100% integral', 120.00, '2025-06-20', 4),
('Feijão Preto', 'Feijão preto tipo 1', 130.00, '2025-07-01', 4),
('Queijo Minas', 'Queijo minas artesanal', 180.00, '2025-04-05', 5),
('Leite Integral', 'Leite integral pasteurizado', 200.00, '2025-03-25', 5);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;
 
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id WHERE tb_produtos.categorias_id = 4;
