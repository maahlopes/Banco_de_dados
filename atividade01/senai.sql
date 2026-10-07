CREATE DATABASE atividade01;

USE atividade01;

CREATE TABLE cliente (
   id_cliente INT PRIMARY KEY AUTO_INCREMENT,
   nome_cliente VARCHAR (100) NOT NULL,
   email VARCHAR (100) NOT NULL,
   telefone VARCHAR (100) NOT NULL
);

CREATE TABLE produto (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR (100) NOT NULL,
    preco DECIMAL (10,2) NOT NULL,
    qtd INT NOT NULL
);

CREATE TABLE vendas (
    id_venda INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    id_produto INT NOT NULL,
    qtd INT NOT NULL,

    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
);

USE atividade01;

INSERT INTO cliente (nome_cliente, email, telefone)
VALUES("Tom Holland", "tomzinho@gmail.com", "97777-1958");

INSERT INTO cliente (nome_cliente, email, telefone)
VALUES("Thor", "vingador.mais.forte@gmail.com", "98888-5555");

INSERT INTO cliente (nome_cliente, email, telefone)
VALUES("Tony Stark", "homemdeferro@gmail.com", "99123-4567"); 


SELECT * FROM produto;

INSERT INTO produto (nome_produto, preco, qtd_vendida)
VALUES ("Fantasia", 50.00, 1);

INSERT INTO produto (nome_produto, preco, qtd_vendida)
VALUES ("Shampoo", 250.00, 3);

INSERT INTO produto (nome_produto, preco, qtd_vendida)
VALUES ("Óculos escuros", 10000.00, 2);

SELECT * FROM produto;


SELECT * FROM vendas;

INSERT INTO vendas (id_venda, id_cliente, id_produto, qtd)
VALUES (1, 1, 1, 1);

INSERT INTO vendas (id_venda, id_cliente, id_produto, qtd)
VALUES (2, 2, 2, 3);
INSERT INTO vendas (id_venda, id_cliente, id_produto, qtd)
VALUES (3, 3, 3, 2);


INSERT INTO cliente (nome_cliente, email, telefone)
VALUES ("Zendaya", "zendayaal@gmail.com", "99999-1111");

SELECT * FROM cliente;

UPDATE cliente
SET telefone = "73871-1211"
WHERE id_cliente = 4;

DELETE FROM cliente
WHERE id_cliente = 4;

