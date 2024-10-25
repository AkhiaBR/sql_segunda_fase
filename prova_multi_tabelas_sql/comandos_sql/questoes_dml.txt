-- Aluno: Fernando Gonçalves
-- Turma: 2190

-- Questão 06:

-- A):
SELECT * FROM categoria;
-- B):
SELECT nome,cidade,telefone FROM cliente;
-- C):
SELECT * FROM marca
ORDER BY marca.nome ASC;
-- D):
SELECT * FROM modelo
WHERE modelo.codigo_marca = 2;
-- E):
SELECT placa,cor,ano,valor FROM veiculo;
-- F):
SELECT * FROM cliente
WHERE cidade LIKE 'Criciuma';
-- G):
SELECT * FROM veiculo
WHERE ano = 2020
AND cor LIKE 'Prata';
-- H):
SELECT * FROM veiculo
WHERE ano BETWEEN 2020 AND 2024
AND cor LIKE 'Branca'
AND combustivel LIKE 'Gasolina';
-- I)
SELECT placa,cor,ano,valor FROM veiculo
WHERE valor > 15000 AND valor < 20000
AND ano BETWEEN 2010 AND 2020;
-- J)
SELECT descricao,ano,valor,nome FROM veiculo,cliente
WHERE veiculo.cpf_cliente = cliente.cpf_cliente
AND cliente.nome LIKE "Maria";
-- K)
SELECT placa,cor,ano,valor,cliente.nome,marca.nome FROM veiculo,cliente,marca
WHERE veiculo.cpf_cliente = cliente.cpf_cliente
AND veiculo.codigo_marca = marca.codigo_marca
AND cliente.nome LIKE "Carlos"
AND marca.nome LIKE "Ford";
-- L)
SELECT veiculo.descricao,placa,cor,ano,valor,marca.nome,modelo.nome FROM veiculo,marca,modelo
WHERE veiculo.codigo_marca = marca.codigo_marca
AND veiculo.codigo_modelo = modelo.codigo_modelo
AND marca.nome LIKE 'Fiat'
AND modelo.nome LIKE 'Palio';
-- M)
SELECT veiculo.descricao,ano,valor,cliente.nome,telefone,marca.nome FROM veiculo,cliente,marca
WHERE veiculo.cpf_cliente = cliente.cpf_cliente
AND veiculo.codigo_marca = marca.codigo_marca
AND marca.nome LIKE 'Ford';
-- N)
SELECT veiculo.descricao,placa,ano,cor,valor,cliente.nome,cidade,marca.nome,modelo.nome FROM veiculo,cliente,marca,modelo
WHERE veiculo.cpf_cliente = cliente.cpf_cliente
AND veiculo.codigo_marca = marca.codigo_marca
AND veiculo.codigo_modelo = modelo.codigo_modelo
AND marca.nome LIKE 'Fiat'
AND modelo.nome LIKE 'Uno';
-- O)
SELECT veiculo.descricao,ano,valor,cliente.nome,telefone,categoria.descricao FROM veiculo,cliente,categoria
WHERE veiculo.cpf_cliente = cliente.cpf_cliente
AND veiculo.codigo_categoria = categoria.codigo_categoria
AND categoria.descricao LIKE 'Moto'
AND veiculo.ano > 2010 AND veiculo.ano < 2020;
-- P)
SELECT veiculo.descricao,ano,valor,cliente.nome,marca.nome,modelo.nome FROM veiculo,cliente,marca,modelo
WHERE veiculo.cpf_cliente = cliente.cpf_cliente
AND veiculo.codigo_marca = marca.codigo_marca
AND veiculo.codigo_modelo = modelo.codigo_modelo
AND modelo.nome LIKE 'Fiesta'
AND veiculo.ano BETWEEN 2023 AND 2024;
-- Q)
SELECT veiculo.descricao,ano,valor,cliente.nome,marca.nome,modelo.nome FROM veiculo,cliente,marca,modelo
WHERE veiculo.cpf_cliente = cliente.cpf_cliente
AND veiculo.codigo_marca = marca.codigo_marca
AND veiculo.codigo_modelo = modelo.codigo_modelo
AND marca.nome LIKE 'Fiat'
AND veiculo.cor LIKE 'Preto'
AND veiculo.ano BETWEEN 2020 AND 2024;
-- R)
SELECT veiculo.descricao,ano,cor,valor,cliente.nome,marca.nome,modelo.nome FROM veiculo,cliente,marca,modelo
WHERE veiculo.cpf_cliente = cliente.cpf_cliente
AND veiculo.codigo_marca = marca.codigo_marca
AND veiculo.codigo_modelo = modelo.codigo_modelo
AND veiculo.combustivel LIKE 'Gasolina'
AND veiculo.ano BETWEEN 2020 AND 2024;
