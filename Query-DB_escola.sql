CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
	nota DECIMAL (3,1),
    curso VARCHAR(100),
    data_matricula DATE
);

INSERT INTO tb_estudantes (nome, nota, curso, data_matricula) VALUES 
('Alice Souza', 8.5, 'Engenharia de Software', '2023-02-15'),
('Bruno Oliveira', 7.2, 'Administração', '2022-08-10'),
('Camila Fernandes', 9.1, 'Medicina', '2021-06-20'),
('Diego Martins', 6.8, 'Direito', '2023-03-25'),
('Eduarda Lima', 8.9, 'Arquitetura', '2020-11-12'),
('Felipe Costa', 5.5, 'Matemática', '2024-01-08'),
('Gabriela Santos', 9.3, 'Ciência da Computação', '2022-09-05'),
('Henrique Almeida', 7.6, 'Psicologia', '2021-05-30'),
('Isabela Nunes', 6.4, 'Engenharia Civil', '2023-07-14'),
('João Ricardo', 8.2, 'Física', '2020-10-22'),
('Karina Lopes', 7.9, 'Biomedicina', '2022-12-18'),
('Lucas Mendes', 9.5, 'Análise e Desenvolvimento de Sistemas', '2023-04-03'),
('Mariana Duarte', 6.7, 'Ciências Contábeis', '2019-09-25'),
('Nathan Borges', 8.1, 'Marketing', '2021-08-15'),
('Olivia Rezende', 7.0, 'Letras', '2020-06-07'),
('Pedro Vasconcelos', 9.8, 'Engenharia Elétrica', '2024-02-05'),
('Raquel Farias', 5.9, 'História', '2023-10-29'),
('Samuel Xavier', 7.4, 'Educação Física', '2022-03-11'),
('Tatiane Barros', 8.7, 'Jornalismo', '2021-12-20'),
('Ubirajara Teixeira', 5.2, 'Filosofia', '2023-09-14'),
('Vinícius Rocha', 9.0, 'Sistemas de Informação', '2022-07-02'),
('Wesley Moreira', 6.5, 'Química', '2019-04-19'),
('Ximena Albuquerque', 7.8, 'Design Gráfico', '2024-01-27'),
('Yasmin Figueiredo', 8.3, 'Pedagogia', '2020-03-10'),
('Zeca Navarro', 6.0, 'Turismo', '2023-05-22');

SELECT * FROM tb_estudantes WHERE nota > 7.0;

SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes SET nota = 3.0 WHERE id = 6;

SELECT * FROM tb_estudantes;