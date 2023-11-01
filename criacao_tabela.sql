drop table if EXISTS Cliente CASCADE;
drop TABLE if EXISTS Cadastro CASCADE;
drop TABLE if EXISTS Venda CASCADE;
drop TABLE if EXISTS Funcionario CASCADE;
drop TABLE if EXISTS Produto CASCADE;
drop TABLE if EXISTS Categoria CASCADE;
drop TABLE if EXISTS Fornecedor CASCADE;

CREATE TABLE Cliente (
    id serial PRIMARY KEY,
    id_cadastro int UNIQUE

);

CREATE TABLE Cadastro (
    id serial PRIMARY KEY,
    nomeCliente varchar(255) NOT NULL,
    cpfcliente varchar(11) UNIQUE NOT NULL,
    datanascimento date NOT NULL,
    enderecocliente varchar(255) NOT NULL

);

CREATE TABLE Venda (
    id serial PRIMARY KEY,
    datavenda date,
    idfuncionario int NOT NULL,
    idproduto int NOT NULL

);

CREATE TABLE Funcionario (
    id serial PRIMARY KEY,
    cpffuncionario varchar(11) UNIQUE NOT NULL,
    nomefuncionario varchar(255) NOT NULL,
    estadobrfil varchar(2) NOT NULL,
    codigofilial int NOT NULL,
    especializacaofil varchar(255) NOT NULL

);


## Preciso verificar o decimal que eu usei!! Poderia ter usado float, mas preciso pesquisar mais sobre o parametro   
CREATE TABLE Produto (
    id serial PRIMARY KEY,
    nomeProd varchar(255) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    dataentrega date NOT NULL,
    id_fornecedor int NOT NULL

);

CREATE TABLE Categoria (
    id serial PRIMARY KEY,
    idProd int UNIQUE,
    nomecategoria varchar(255),
    CONSTRAINT pk_categoria UNIQUE (idProd, nomecategoria)
);


CREATE TABLE Fornecedor (
    id serial PRIMARY KEY,
    CNPJ varchar(14) NOT NULL,
    nome varchar(255) NOT NULL,
    endereco varchar(255) NOT NULL
);

ALTER TABLE Produto 
ADD FOREIGN KEY(id_fornecedor) REFERENCES fornecedor(id) ON DELETE SET NULL;