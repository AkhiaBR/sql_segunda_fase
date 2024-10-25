-- Aluno: Fernando Gonçalves
-- Turma: 2190

-- Questão 01:
CREATE SCHEMA revenda2190;

-- Questão 02:
CREATE TABLE categoria (
    codigo_categoria INT(6) NOT NULL,
    descricao VARCHAR(45) NOT NULL,
    PRIMARY KEY (codigo_categoria));

CREATE TABLE marca (
    codigo_marca INT(6) NOT NULL,
    nome VARCHAR(45) NOT NULL,
    PRIMARY KEY (codigo_marca)
);

CREATE TABLE modelo (
    codigo_modelo INT(6) NOT NULL,
    nome VARCHAR(45) NOT NULL,
    codigo_marca INT(6) NOT NULL,
    PRIMARY KEY (codigo_modelo),
    FOREIGN KEY (codigo_marca) REFERENCES marca (codigo_marca)
);

CREATE TABLE cliente (
    cpf_cliente INT(11) NOT NULL,
    nome VARCHAR(45) NOT NULL,
    endereco VARCHAR(45) NOT NULL,
    cidade VARCHAR(45) NOT NULL,
    estado VARCHAR(45) NOT NULL,
    telefone INT(20) NOT NULL,
    PRIMARY KEY (cpf_cliente)
);

CREATE TABLE veiculo (
    codigo_veiculo INT(6) NOT NULL,
    placa VARCHAR(45) NOT NULL,
    descricao VARCHAR(45) NOT NULL,
    ano INT(6) NOT NULL,
    cor VARCHAR(45) NOT NULL,
    combustivel VARCHAR(45) NOT NULL,
    acessorios VARCHAR(45) NOT NULL,
    codigo_marca INT(6) NOT NULL,
    codigo_categoria INT(6) NOT NULL,
    cpf_cliente INT(20) NOT NULL,
    codigo_modelo INT(6) NOT NULL,
    PRIMARY KEY (codigo_veiculo),
    FOREIGN KEY (codigo_marca) REFERENCES marca (codigo_marca),
    FOREIGN KEY (codigo_categoria) REFERENCES categoria (codigo_categoria),
    FOREIGN KEY (cpf_cliente) REFERENCES cliente (cpf_cliente),
    FOREIGN KEY (codigo_modelo) REFERENCES modelo (codigo_modelo)
);

-- Questão 03:
ALTER TABLE cliente 
ADD email VARCHAR(45) NOT NULL;

-- Questão 04:
ALTER TABLE veiculo 
ADD valor FLOAT(10) NOT NULL;

-- Questão 05:
INSERT INTO categoria (codigo_categoria,descricao) VALUES (1,'Carro');
INSERT INTO categoria (codigo_categoria,descricao) VALUES (2,'Caminhão');
INSERT INTO categoria (codigo_categoria,descricao) VALUES (3,'Carro');
INSERT INTO categoria (codigo_categoria,descricao) VALUES (4,'Moto');
INSERT INTO categoria (codigo_categoria,descricao) VALUES (5,'Carro');

INSERT INTO cliente (cpf_cliente,nome,endereco,cidade,estado,telefone,email) VALUES (0000000000005,'Roberto Humme','Rua Esperança','Cocal do Sul','SC',48998746577,'roberto@outlook.com');
INSERT INTO cliente (cpf_cliente,nome,endereco,cidade,estado,telefone,email) VALUES (0000000000001,'Cláudio Vasconcelos','Rua Impituba','Cocal do Norte','SC',48902787598,'claudio@outlook.com');
INSERT INTO cliente (cpf_cliente,nome,endereco,cidade,estado,telefone,email) VALUES (0000000000002,'Henrique Mendonça','Rua Carandiru','Cocal do Leste','SC',48973748202,'henrique@gmail.com');
INSERT INTO cliente (cpf_cliente,nome,endereco,cidade,estado,telefone,email) VALUES (0000000000003,'Kaique Morais','Rua Harmonia','Jaguaruna','SC',48828743583,'kaique@outlook.com');
INSERT INTO cliente (cpf_cliente,nome,endereco,cidade,estado,telefone,email) VALUES (0000000000004,'Euclides Grego','Rua Zap','Criciuma','SC',48398326502,'euclides@protonmail.com');

INSERT INTO marca (codigo_marca,nome) VALUES (1,'Ferarri');
INSERT INTO marca (codigo_marca,nome) VALUES (2,'Mercedez');
INSERT INTO marca (codigo_marca,nome) VALUES (3,'Pagani');
INSERT INTO marca (codigo_marca,nome) VALUES (4,'Mitsubishi');
INSERT INTO marca (codigo_marca,nome) VALUES (5,'Lamborghini');

INSERT INTO modelo (codigo_modelo,nome,codigo_marca) VALUES (1,'Spider',1);
INSERT INTO modelo (codigo_modelo,nome,codigo_marca) VALUES (2,'Hercules',2);
INSERT INTO modelo (codigo_modelo,nome,codigo_marca) VALUES (3,'Zonda',3);
INSERT INTO modelo (codigo_modelo,nome,codigo_marca) VALUES (4,'Hayaka',4);
INSERT INTO modelo (codigo_modelo,nome,codigo_marca) VALUES (5,'Huracan',5);

INSERT INTO veiculo (codigo_veiculo,placa,descricao,ano,cor,combustivel,acessorios,codigo_marca,codigo_categoria,cpf_cliente,codigo_modelo,valor) VALUES (1,'QWE23UT','Carro',2005,'Vermelho','Gasolina','Aerofólio',1,1,1,1,876294);
INSERT INTO veiculo (codigo_veiculo,placa,descricao,ano,cor,combustivel,acessorios,codigo_marca,codigo_categoria,cpf_cliente,codigo_modelo,valor) VALUES (2,'SLVF7HJ','Caminhão',2001,'Branco','Diesel','Escapamento',2,2,2,2,40294);
INSERT INTO veiculo (codigo_veiculo,placa,descricao,ano,cor,combustivel,acessorios,codigo_marca,codigo_categoria,cpf_cliente,codigo_modelo,valor) VALUES (3,'HJJ56UT','Carro',2013,'Amarelo','Gasolina','Aerofólio',3,3,3,3,20394);
INSERT INTO veiculo (codigo_veiculo,placa,descricao,ano,cor,combustivel,acessorios,codigo_marca,codigo_categoria,cpf_cliente,codigo_modelo,valor) VALUES (4,'NGF24FT','Moto',2012,'Preto','Etanol','Faról',4,4,4,4,3294);
INSERT INTO veiculo (codigo_veiculo,placa,descricao,ano,cor,combustivel,acessorios,codigo_marca,codigo_categoria,cpf_cliente,codigo_modelo,valor) VALUES (5,'MWETRUT','Carro',2015,'Verde','Gasolina','Aerofólio',5,5,5,5,8294);