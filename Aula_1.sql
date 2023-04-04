create database Base01;

create table Cliente(
    id int NOT NULL,
    nome varchar(100) NOT NULL,
    cpf char(11) NOT NULL,
    
    constraint PK_Cliente PRIMARY KEY (id),
    constraint UN_Cliente_CPF UNIQUE (cpf)
);

create table Cliente_Fone(
    id_cliente int NOT NULL,
    numero varchar(14) NOT NULL,
    tipo int NOT NULL, 

    constraint PK_Cliente_Fone PRIMARY KEY(id_cliente, numero),
    constraint FK_Cliente_Fone_Cliente FOREIGN KEY (id_cliente) references Cliente (id)
);