SELECT aluno.nome, curso.nome FROM aluno,curso
WHERE aluno.codigo_curso = curso.codigo_curso;