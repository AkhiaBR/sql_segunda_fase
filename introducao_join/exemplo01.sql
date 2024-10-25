SELECT A.first_name, B.province_name FROM patients -- seleciona os nomes (pacientes e províncias, respectivamente) da tabela A e B da tabela PACIENTES, atribuindo a ela o nome de A
AS A INNER JOIN province_names AS B -- INNER JOIN (interseção do conjunto A e B)
ON A.province_id = B.province_id; -- argumenta que o ID da província da A é uma foreign key da tabela B