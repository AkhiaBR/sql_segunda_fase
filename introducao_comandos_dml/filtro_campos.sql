SELECT nome,datanasc -- seleciona os campos de nome e data de nascimento
FROM 2190escola.aluno -- da tabela aluno

WHERE datanasc -- onde o campo de data de nascimento
BETWEEN "1990/02/02" AND "2007/06/20" -- exibe as datas de nascimento entre as datas especificadas