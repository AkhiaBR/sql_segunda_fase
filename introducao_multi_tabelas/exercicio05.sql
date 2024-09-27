SELECT aluno.nome, curso.nome, cidade.nome, estado.nome, matricula.valor FROM aluno,curso,cidade,estado,matricula
WHERE aluno.codigo_curso = curso.codigo_curso
AND aluno.codigo_cidade = cidade.codigo_cidade
AND cidade.codigo_estado = estado.codigo_estado
AND matricula.codigo_aluno = aluno.matricula;