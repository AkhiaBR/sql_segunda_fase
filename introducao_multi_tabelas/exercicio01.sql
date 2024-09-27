SELECT professor.nome, curso.nome FROM professor,curso
WHERE professor.codigo_curso = curso.codigo_curso;