CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_rh (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
cpf CHAR(11) NOT NULL, 
data_admissao DATE NOT NULL,
cargo VARCHAR(255) NOT NULL,
salario DECIMAL(8,2) NOT NULL
);

INSERT INTO tb_rh (cpf, data_admissao, cargo, salario) VALUES
('12345678901', '2023-01-15', 'Analista de Sistemas', 6500.00),
('98765432100', '2022-06-10', 'Desenvolvedor Back-end', 7200.50),
('45612378902', '2021-09-25', 'Gerente de Projetos', 9800.75),
('32178965403', '2020-12-05', 'Engenheiro de Software', 8500.00),
('15975348620', '2023-04-10', 'Estagiário de TI', 1800.00),
('65498732104', '2023-03-18', 'Analista de Suporte', 4500.30),
('74185296310', '2024-01-05', 'Jovem Aprendiz Administrativo', 1500.00),
('78932165405', '2019-07-22', 'Coordenador de TI', 9200.00),
('85296374106', '2021-05-30', 'Especialista em Segurança da Informação', 11000.00),
('36985214708', '2022-08-14', 'Administrador de Banco de Dados', 7500.40),
('15935748602', '2023-06-12', 'Assistente Administrativo', 1900.00),
('14725836907', '2024-02-01', 'Desenvolvedor Front-end', 6800.90),
('95175385209', '2020-11-11', 'Scrum Master', 8900.00),
('35795146812', '2022-09-30', 'Auxiliar de Suporte Técnico', 1700.00),
('25836914713', '2024-03-05', 'Recepcionista', 1600.00);

SELECT * FROM tb_rh WHERE salario > 2000.00;

SELECT * FROM tb_rh WHERE salario < 2000.00;

UPDATE tb_rh SET cargo = "Estagiário de Dados" WHERE id = 7;

SELECT * FROM tb_rh;