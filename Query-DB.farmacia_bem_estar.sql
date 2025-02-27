CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

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
restricao BOOLEAN NOT NULL,
categorias_id BIGINT NOT NULL,
CONSTRAINT fk_categorias_produtos FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (categoria, marca) VALUES
('Medicamentos', 'MedPharma'),
('Higiene', 'CleanCare'),
('Suplementos', 'VitaPlus'),
('Perfumaria', 'BeautyScent'),
('Equipamentos', 'HealthTech');

INSERT INTO tb_produtos (nome, descricao, preco, restricao, categorias_id) VALUES
('Paracetamol 750mg', 'Analgésico e antitérmico', 10.50, FALSE, 1),
('Sabonete Líquido', 'Para peles sensíveis', 8.99, FALSE, 2),
('Whey Protein 900g', 'Suplemento para atletas', 120.00, FALSE, 3),
('Perfume Floral 50ml', 'Fragrância suave e duradoura', 85.50, FALSE, 4),
('Termômetro Digital', 'Mede temperatura corporal', 45.90, FALSE, 5),
('Dipirona 500mg', 'Analgésico e antitérmico', 7.50, TRUE, 1),
('Escova de Dentes', 'Cerdas macias para gengivas sensíveis', 12.00, FALSE, 2),
('Vitamina C 500mg', 'Suplemento vitamínico diário', 25.90, FALSE, 3);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;
 
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id WHERE tb_produtos.categorias_id = 3;
