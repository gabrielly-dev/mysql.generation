CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

-- o ponto vai até 3, mas o thiago disse que temos que seguir o que está no exercício, como conseguir a nota 3?

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
categoria VARCHAR(255) NOT NULL UNIQUE,
popularidade ENUM('Baixa', 'Média', 'Alta') NOT NULL DEFAULT 'Baixa'
);

CREATE TABLE tb_pizzas (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL UNIQUE,
valor DECIMAL(5,2) NOT NULL,
descricao VARCHAR(255) NOT NULL,
recheio_borda VARCHAR(255) NOT NULL,
categoria_id BIGINT NOT NULL,
CONSTRAINT fk_categorias_pizzas FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (categoria, popularidade) VALUES
('Pizzas Tradicionais', 'Alta'),
('Pizzas Especiais', 'Média'),
('Pizzas Vegetarianas', 'Média'),
('Pizzas Doces', 'Alta'),
('Pizzas Premium', 'Baixa');

INSERT INTO tb_pizzas (nome, valor, descricao, recheio_borda, categoria_id) VALUES 
('Margherita', 39.90, 'Molho de tomate, muçarela e manjericão', 'Recheio de catupiry', 1),
('Calabresa', 42.50, 'Calabresa, cebola e queijo muçarela', 'Recheio de cheddar', 1),
('Portuguesa', 65.00, 'Presunto, ovos, azeitonas e queijo muçarela', 'Recheio de alho e óleo', 1),
('Frango com Catupiry', 48.00, 'Frango desfiado com catupiry', 'Recheio de cream cheese', 2),
('Quatro Queijos', 70.00, 'Muçarela, provolone, parmesão e gorgonzola', 'Recheio de queijo minas', 2),
('Vegetariana', 46.00, 'Tomates, cogumelos, abobrinha e pimentões', 'Recheio de requeijão', 3),
('Chocolate Branco', 87.50, 'Chocolate branco derretido com morangos', 'Recheio de brigadeiro', 4),
('Nutella com Banana', 73.00, 'Nutella, banana e lascas de chocolate', 'Recheio de Nutella', 4);

SELECT * FROM tb_pizzas WHERE valor > 45.00;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;
 
SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id WHERE tb_categorias.categoria LIKE "%Doces%" ;