CREATE TABLE clientes (
    id SERIAL NOT NULL PRIMARY KEY,
    nome VARCHAR(80), 
    telefone VARCHAR(30), 
    endereco VARCHAR(50), 
    email VARCHAR(80)
);

CREATE TABLE grupo (
    id SERIAL NOT NULL PRIMARY KEY,
    descricao VARCHAR(30)
);

CREATE TABLE produtos (
    id SERIAL NOT NULL PRIMARY KEY,
    descricao VARCHAR(80) NOT NULL,
    idgrupo INTEGER NOT NULL,
    custocompra NUMERIC(13,2) DEFAULT 0,
    precovenda NUMERIC(13,2) DEFAULT 0,
    CONSTRAINT fk_produtos_grupo FOREIGN KEY (idgrupo) REFERENCES grupo(id)
);

CREATE TABLE pedidos (
    id SERIAL NOT NULL PRIMARY KEY,
    idcliente INTEGER, 
    valor NUMERIC(13,2),
    desconto NUMERIC(13,2),
    quantidadeitens INTEGER,
    CONSTRAINT fk_pedidos_clientes FOREIGN KEY (idcliente) REFERENCES clientes(id)
);

CREATE TABLE pedidosprod (
    id SERIAL NOT NULL PRIMARY KEY,
    idpedido INTEGER NOT NULL,
    idproduto INTEGER NOT NULL,
    quantidade NUMERIC(13,2) NOT NULL,
    valorunitario NUMERIC(13,2) NOT NULL,
    descontoitem NUMERIC(13,2) DEFAULT 0,
    valortotal NUMERIC(13,2) NOT NULL,
    CONSTRAINT fk_pedidosprod_pedido FOREIGN KEY (idpedido) REFERENCES pedidos(id),
    CONSTRAINT fk_pedidosprod_produto FOREIGN KEY (idproduto) REFERENCES produtos(id)
);

CREATE TABLE usuarios (
    id SERIAL NOT NULL PRIMARY KEY,
    login VARCHAR(20) NOT NULL, 
    senha VARCHAR(44) NOT NULL,
    admin BOOLEAN NOT NULL DEFAULT FALSE
);
