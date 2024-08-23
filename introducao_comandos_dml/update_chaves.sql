SELECT * FROM 2190escola.estado; -- mostra todas as informacoes da tabela estado dentro do databse 2190escola
update estado set nome = "Rio Grande do Sul" -- atualiza o estado setando o nome como Rio Grande do Sul
where codigo_estado = 3; -- condicao de qual coluna sera atualizada

SELECT * FROM 2190escola.aluno;
UPDATE aluno SET endereco = "Rua Pedro Loos" 
WHERE matricula in (1,2); -- altera as colunas 1 e 2 para o mesmo endereco