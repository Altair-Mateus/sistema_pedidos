CREATE DATABASE sistema_pedidos
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

USE sistema_pedidos;

CREATE TABLE tbl_clientes (
  codigo int NOT NULL AUTO_INCREMENT,
  nome varchar(255) NOT NULL,
  cidade varchar(255) DEFAULT NULL,
  uf varchar(2) DEFAULT NULL,
  PRIMARY KEY (codigo)
);

CREATE TABLE tbl_produtos (
	codigo int NOT NULL AUTO_INCREMENT,
    descricao varchar(255) NOT NULL,
    preco_venda decimal(10,2) NOT NULL,
    PRIMARY KEY (codigo)
);

CREATE TABLE tbl_pedidos (
	numero_pedido int NOT NULL AUTO_INCREMENT,
    data_emissao datetime NOT NULL,
    codigo_cliente int NOT NULL,
    valor_total decimal(10,2) NOT NULL,
    PRIMARY KEY (numero_pedido)
);

CREATE TABLE tbl_pedido_itens (
	codigo int NOT NULL AUTO_INCREMENT,
    numero_pedido int NOT NULL,
    codigo_produto int NOT NULL,
    quantidade decimal(10,3) NOT NULL,
    valor_unitario decimal(10,2) NOT NULL,
    valor_total decimal(10,2) NOT NULL,
    PRIMARY KEY (codigo)
);

-- FKs
ALTER TABLE tbl_pedidos ADD CONSTRAINT fk_pedido_cliente 
FOREIGN KEY (codigo_cliente) REFERENCES tbl_clientes(codigo);

ALTER TABLE tbl_pedido_itens ADD CONSTRAINT fk_numero_pedido
FOREIGN KEY (numero_pedido) REFERENCES tbl_pedidos(numero_pedido)
ON DELETE CASCADE;

ALTER TABLE tbl_pedido_itens ADD CONSTRAINT fk_pedido_produto
FOREIGN KEY (codigo_produto) REFERENCES tbl_produtos(codigo); 

-- Indices
CREATE INDEX idx_pedido_cliente
ON tbl_pedidos (codigo_cliente);

CREATE INDEX idx_item_pedido
ON tbl_pedido_itens (numero_pedido);

CREATE INDEX idx_item_produto
ON tbl_pedido_itens (codigo_produto);

