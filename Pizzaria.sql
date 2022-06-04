CREATE DATABASE Pizzaria_Fantasia;
USE Pizzaria_Fantasia;

ALTER TABLE clientes ADD endereco int;
ALTER TABLE clientes ADD telefone int;

CREATE TABLE clientes (
id int unsigned NOT NULL AUTO_INCREMENT,
nome varchar(200) NOT NULL,
cpf bigint NOT NULL,
PRIMARY KEY (`id`),
telefone varchar (15),
endereco varchar (240) NOT NULL 
) CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE pizzas(
id int unsigned NOT NULL AUTO_INCREMENT,
nome varchar(200) NOT NULL,
preco decimal(5,2) NOT NULL,
PRIMARY KEY(`id`)
) CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE pedidos(
id int unsigned NOT NULL AUTO_INCREMENT,
clientes_id int	unsigned NOT NULL,
datahora datetime NOT NULL,
endereco varchar(240) NOT NULL,
total decimal (9,2) NOT NULL,
CONSTRAINT fk_cliente FOREIGN KEY (clientes_id) REFERENCES clientes(id),
PRIMARY KEY(`id`)
) CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
