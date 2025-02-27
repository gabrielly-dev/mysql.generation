CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

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
quantidade_estoque INT NOT NULL,
categorias_id BIGINT NOT NULL,
CONSTRAINT fk_categorias_produtos FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (categoria, marca) VALUES
('Cimento', 'Votorantim'),
('Tijolos', 'Cerâmica ABC'),
('Ferragens', 'Gerdau'),
('Tintas', 'Suvinil'),
('Tubos e Conexões', 'Amanco');

INSERT INTO tb_produtos (nome, descricao, preco, quantidade_estoque, categorias_id) VALUES
('Cimento CP II', 'Cimento para construção, ideal para diversos tipos de obra', 25.50, 100, 1),
('Tijolo Maciço', 'Tijolo maciço de alta resistência, para alvenaria', 55.00, 200, 2),
('Parafuso 8x50mm', 'Parafuso de aço galvanizado para fixação em diversas superfícies', 10.00, 500, 3),
('Tinta Acrílica', 'Tinta acrílica de acabamento fosco, 18L', 120.00, 150, 4),
('Tinta Epóxi', 'Tinta epóxi para pisos de alto tráfego, 18L', 180.00, 50, 4),
('Cimento CP III', 'Cimento com alto desempenho, ideal para obras estruturais', 135.00, 70, 1),
('Tubulação PVC 25mm', 'Tubulação em PVC de 25mm para rede hidráulica', 8.50, 300, 5),
('Serra Circular Bosch', 'Serra circular 1100W, ideal para cortes em madeira e metal', 350.00, 40, 3);

SELECT * FROM tb_produtos WHERE preco > 100.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;
 
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id WHERE tb_produtos.categorias_id = 4;
