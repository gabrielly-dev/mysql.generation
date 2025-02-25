CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
preco DECIMAL(5,2) NOT NULL,
categoria VARCHAR(255) NOT NULL,
qtd_estoque BIGINT
);

INSERT INTO tb_produtos (nome, preco, categoria, qtd_estoque) VALUES
('Notebook Gamer', 599.90, 'Eletrônicos', 15),
('Teclado Mecânico RGB', 349.90, 'Periféricos', 50),
('Mouse Sem Fio', 129.90, 'Periféricos', 80),
('Monitor 27" 144Hz', 399.90, 'Eletrônicos', 25),
('Cadeira Gamer', 899.90, 'Móveis', 10),
('Smartphone 128GB', 299.90, 'Eletrônicos', 30),
('Fone de Ouvido Bluetooth', 199.09, 'Áudio', 70),
('HD Externo 1TB', 399.90, 'Armazenamento', 40),
('Memória RAM 16GB', 499.09, 'Hardware', 35),
('Processador Ryzen 7', 799.90, 'Hardware', 20),
('Placa de Vídeo RTX 4060', 999.90, 'Hardware', 12),
('Fonte 600W 80 Plus', 349.90, 'Hardware', 25),
('Gabinete Mid Tower', 499.90, 'Hardware', 18),
('Mesa para Computador', 699.90, 'Móveis', 8),
('Webcam Full HD', 199.90, 'Periféricos', 60),
('SSD 1TB NVMe', 799.90, 'Armazenamento', 22),
('Smartwatch', 899.00, 'Eletrônicos', 15),
('Cabo HDMI 2m', 49.00, 'Acessórios', 120),
('Microfone Condensador', 349.90, 'Áudio', 40),
('Caixa de Som Bluetooth', 229.90, 'Áudio', 50),
('Ventilador de Mesa', 179.90, 'Eletrodomésticos', 25),
('Impressora Multifuncional', 899.90, 'Eletrônicos', 10),
('Bateria Portátil 10.000mAh', 149.90, 'Acessórios', 65),
('Headset Gamer', 399.90, 'Áudio', 55),
('Controle Bluetooth', 299.90, 'Acessórios', 45);

SELECT * FROM tb_produtos WHERE preco > 500.00;

SELECT * FROM tb_produtos WHERE preco < 500.00;

UPDATE tb_produtos SET preco = 499.00 WHERE id = 25;

SELECT * FROM tb_produtos;

