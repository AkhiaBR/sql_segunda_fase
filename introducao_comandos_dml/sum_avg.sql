SELECT SUM(nraulas) -- total de aulas do campo nraulas da table disciplina
FROM 2190escola.disciplina;

SELECT AVG(nraulas) -- average, média do número de aulas da table disciplina
FROM 2190escola.disciplina;

SELECT COUNT(nraulas) -- conta a quantidade de registros de um campo, por exemplo, 5 alunos tem 5 nraulas, ou seja, COUNT(nraulas) = 5
FROM 2190escola.disciplina;