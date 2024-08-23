SELECT matricula,nome FROM 2190escola.aluno -- seleciona matricula e nome da table aluno dentro do database 2190escola
WHERE matricula IS NULL; -- mostra somente os valores nulos dos campos matricula e nome

SELECT * FROM 2190escola.aluno
WHERE endereco LIKE "R%"; -- mostra todos os alunos com enderecos com que comecam com "R"