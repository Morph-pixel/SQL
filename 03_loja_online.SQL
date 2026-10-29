CREATE DATABASE loja

CREATE TABLE clientes(
    id_cliente INT PRIMARY KEY, 
    nome VARCHAR(80)
);

CREATE TABLE categorias(
    id_categoria INT PRIMARY KEY, 
    nome_categoria VARCHAR(40)
); 

CREATE TABLE produtos(
    id_produto INT, 
    nome_produto VARCHAR(80), 
    preco DECIMAL(8,2), 
    id_categoria INT 
        CONSTRAINT pk_produtos 
            PRIMARY KEY(id_produto) 
        CONSTRAINT fk_produtos_categoria 
            FOREIGN KEY(id_categoria) REFERENCES categorias(id_categoria)
);

CREATE TABLE pedidos(
    id_pedido INT 
    datas DATE 
    id_cliente INT 
        CONSTRAINT pk_pedidos 
            PRIMARY KEY(id_pedido) 
        CONSTRAINT fk_pedidos_clientes 
            FOREIGN KEY(id_cliente) REFERENCES clientes(id_clientes)
);

CREATE TABLE item_pedido( 
    id_pedido INT, 
    id_produto INT,  
    quantidade INT 
        CONSTRAINT pk_item_pedido
            PRIMARY KEY(id_pedido,id produto)  
        CONSTRAINT pk_item_pedido_produtos 
            FOREIGN KEY(id_produto) REFERENCES produtos(id_produtos) 
        CONSTRAINT pk_item_pedido_pedidos
            FOREIGN KEY(id_produto) REFERENCES produtos(id_pedidos)
)