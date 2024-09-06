CREATE TABLE matricula (
codigo INT(5) NOT NULL,
data_matricula DATE NOT NULL,
hora TIME NOT NULL,
codigo_aluno INT(5) NOT NULL,
codigo_curso INT(5) NOT NULL,
desconto FLOAT(8,2) NOT NULL,
valor FLOAT(8,2) NOT NULL,
Primary key (codigo),
Foreign key (codigo_aluno) REFERENCES aluno(matricula),
Foreign key (codigo_curso) REFERENCES curso(codigo_curso)
); 