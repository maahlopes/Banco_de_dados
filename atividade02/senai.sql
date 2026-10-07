CREATE DATABASE atividade02;

USE atividade02;

CREATE TABLE aluno (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    curso VARCHAR(100) NOT NULL
);

CREATE TABLE livro (
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    ano_publicacao INT NOT NULL
);

CREATE TABLE emprestimo (
    id_emprestimo INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT NOT NULL,
    id_livro INT NOT NULL,
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE,
    
);


USE atividade02;

INSERT INTO aluno (nome, email, curso)
VALUES("Rafinha", "bts.kawaii@gmail.com", "1920-03-22");

INSERT INTO aluno (nome, email, curso)
VALUES("Maria", "mariazinha@gmail.com", "5678-11-55");


INSERT INTO livro (titulo, autor, ano_publicacao)
VALUES ("Objeto de poder", "Marcos Mota", 2025);

INSERT INTO livro (titulo, autor, ano_publicacao)
VALUES ("Asas reluzentes", "Fulana", 2021);


INSERT INTO emprestimo (id_aluno, id_livro, data_emprestimo, data_devolucao)
VALUES (1, 1, "2026-10-07", "2026-10-21");

INSERT INTO emprestimo (id_aluno, id_livro, data_emprestimo, data_devolucao)
VALUES (2, 2, "2026-10-07", "2026-10-20");

/* Mudei de 2021 para 2020 (UPDATE) */
UPDATE livro
SET ano_publicacao = 2020
WHERE id_livro = 2;

/* Apaguei o emprestimo com id 2 (DELETE) */
DELETE FROM emprestimo
WHERE id_emprestimo = 2;



