
CREATE DATABASE IF NOT EXISTS loja_produtos;
USE loja_produtos;

CREATE TABLE produto (
    id_produto INT NOT NULL AUTO_INCREMENT,
    nome_produto VARCHAR(45) NOT NULL,
    descricao_produto VARCHAR(150),
    preco_produto DECIMAL(10,2) NOT NULL,
    tamanho_produto VARCHAR(45),
    fornecedor_produto VARCHAR(45),
    tipo_produto VARCHAR(45),
    peso_produto VARCHAR(45),
    cor_produto VARCHAR(45),
    PRIMARY KEY (id_produto)
);

select * from produto;

CREATE TABLE pedido (
    id_pedido INT NOT NULL AUTO_INCREMENT,
    quant_produto INT NOT NULL,
    status VARCHAR(45),
    data DATE,
    total DECIMAL(10,2),
    produto_id_produto INT NOT NULL,
    PRIMARY KEY (id_pedido),
    CONSTRAINT fk_pedido_produto
        FOREIGN KEY (produto_id_produto)
        REFERENCES produto(id_produto)
);

select * from pedido;

