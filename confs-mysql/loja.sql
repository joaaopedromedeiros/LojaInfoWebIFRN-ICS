CREATE DATABASE loja_db;
USE loja_db;

CREATE TABLE Produto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    valor_produto DECIMAL(10,2) NOT NULL
);

CREATE TABLE Pedido (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    produto_id INT NOT NULL,
    data_pedido DATE NOT NULL,
    quantidade INT NOT NULL,
    valor_total DECIMAL(10,2) NOT NULL,

    CONSTRAINT fk_pedido_produto
        FOREIGN KEY (produto_id) REFERENCES Produto(id)
);


