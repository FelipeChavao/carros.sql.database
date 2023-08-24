USE  carros;

CREATE TABLE marcas (
    id INT NOT NULL auto_increment,
    nome_marca VARCHAR(255) NOT NULL,
    origem VARCHAR(255) NOT NULL,
    primary key (id)

);



CREATE TABLE inventario (

id INT NOT NULL auto_increment,
modelo VARCHAR(255) NOT NULL, 
transmissao VARCHAR(100) NOT NULL,
motor VARCHAR(100) NOT NULL,
combustivel  VARCHAR(100) NOT NULL,
marcas_id INT NOT NULL,
primary key (id),	
FOREIGN KEY (marcas_id) REFERENCES marcas(id)

);


CREATE TABLE clientes (

id int not null auto_increment,
nome VARCHAR(255) NOT NULL,
sobrenome VARCHAR(255) NOT NULL,
endereco VARCHAR(255) NOT NULL,
primary key (id)


);

INSERT INTO clientes (nome, sobrenome, endereco)
VALUE
('Andre', 'Iacono', 'RUA 1'),
('MARCOS', 'Almeida', 'RUA 2'),
('Jao', 'Ribeiro', 'RUA 3'),
('Sandra', 'Vassoler', 'RUA 4'),
('Sergio', 'Berti', 'RUA 5');

INSERT INTO marcas (nome_marca, origem)
VALUES
('BMW', 'ALEMANHA'),
('FIAT', 'ITALIA'),
('MERCEDES-BENZ', 'ALEMANHA'),
('RENAULT', 'FRANCA'),
('JAGUAR', 'INGLATERRA');

INSERT INTO inventario (modelo,
transmissao,
motor,
combustivel,
marcas_id
)
VALUES 
('BMW 218', 'AUTOMATICA', '2.0', 'GASOLINA', 1),
('XE 2.0D', 'MANUAL', '2.0', 'DIESEL', 5);