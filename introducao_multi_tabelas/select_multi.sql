SELECT aluno.nome, curso.nome FROM aluno,curso -- seleciona o nome do aluno (fernando) e o nome do curso (ex: informática)
WHERE aluno.codigo_curso = curso.codigo_curso; -- argumenta que a FK código curso do aluno é igual ao PK código curso do curso