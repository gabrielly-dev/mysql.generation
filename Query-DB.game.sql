CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;


CREATE TABLE tb_classes (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    classe VARCHAR(255) NOT NULL,
    descricao VARCHAR(255)
);

CREATE TABLE tb_personagens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    raca VARCHAR(50) NOT NULL,
    ataque INT NOT NULL,
    defesa INT NOT NULL,
    classe_id BIGINT NOT NULL,
    CONSTRAINT fk_personagens_classes FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (classe, descricao) VALUES 
('Guerreiro', 'Um combatente forte e resistente, especializado em combates corpo a corpo.'),
('Mago', 'Mestre das artes arcanas, usa magia para atacar e se defender.'),
('Ladino', 'Ágil e furtivo, especialista em ataques rápidos e furtividade.'),
('Clérigo', 'Guardião da fé, utiliza magias divinas para curar e proteger aliados.'),
('Arqueiro', 'Especialista em combate à distância, com alta precisão e mobilidade.');

INSERT INTO tb_personagens (nome, raca, ataque, defesa, classe_id) VALUES
('Thorin', 'Anão', 8000, 1000, 1),  
('Merlin', 'Humano', 1200, 5000, 2),
('Shadow', 'Elfo', 9000, 1500, 3),
('Elena', 'Humana', 700, 9000, 4),
('Legolas', 'Elfo', 1100, 7000, 5),
('Grommash', 'Orc', 1000, 1200, 1),
('Zara', 'Elfa', 130, 5500, 2),
('Darius', 'Humano', 9500, 8000, 3);

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;
 
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

-- SELECT * FROM tb_categorias INNER JOIN tb_pizzas ON tb_pizzas.categoria_id = tb_pizzas.id;
SELECT * FROM tb_classes INNER JOIN tb_personagens ON tb_personagens.classe_id = tb_classes.id;

SELECT * FROM tb_classes INNER JOIN tb_personagens ON tb_personagens.classe_id = tb_classes.id WHERE tb_personagens.classe_id = 2;


