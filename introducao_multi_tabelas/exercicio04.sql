SELECT aluno.nome, curso.nome, cidade.nome FROM aluno,curso,cidade
WHERE aluno.codigo_curso = curso.codigo_curso
AND aluno.codigo_cidade = cidade.codigo_cidade;