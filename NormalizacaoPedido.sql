CREATE DATABASE ExemploPedido;
use ExemploPedido;

create table Cliente(
    id_cliente int NOT NULL,
    nome varchar(100) NOT NULL,
    
    constraint PK_Cliente PRIMARY KEY (id_cliente),
);

create table Pedido(
    id_pedido int NOT NULL,
    data_pedido date NOT NULL,
    id_cliente int NOT NULL,
    
    constraint PK_Pedido PRIMARY KEY (id_pedido),
    constraint FK_Pedido_Cliente FOREIGN KEY (id_cliente) references Cliente (id_cliente)
);

create table TelefonePedido(
    id_pedido int NOT NULL,
    fone varchar(14) NOT NULL,

    constraint PK_TelefonePedido PRIMARY KEY (id_pedido, fone),
    constraint FK_TelefonePedido_Pedido FOREIGN KEY (id_pedido) references Pedido (id_pedido)
);

create table Peca(
    id_peca int NOT NULL,
    desc_peca varchar(100) NOT NULL,

    constraint PK_Peca PRIMARY KEY (id_peca)
);

create table ItemPedido(
    id_pedido int NOT NULL,
    id_peca int NOT NULL,
    quant_peca int NOT NULL,

    constraint PK_ItemPedido PRIMARY KEY (id_pedido, id_peca),
    constraint FK_ItemPedido_Pedido FOREIGN KEY (id_pedido) references Pedido (id_pedido),
    constraint FK_ItemPedido_Peca FOREIGN KEY (id_peca) references Peca (id_peca)
);
