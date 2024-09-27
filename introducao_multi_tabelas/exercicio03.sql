SELECT professor.nome, disciplina.nome FROM professor,disciplina
WHERE professor.codigo_disciplina = disciplina.codigo_disciplina;