-- Introdução com Exercício sobre Escola
-- Nome: Fernando Gonçalves

create table estado (
    codigo_estado int(6) not null,
    nome varchar(40) not null,
    primary key (codigo_estado)
);

create table curso (
    codigo_curso int(6) not null,
    nome varchar(40) not null,
    primary key (codigo_curso)
);

create table cidade (
    codigo_cidade int(6) not null,
    nome varchar(40) not null,
    codigo_estado int(6) not null,
    primary key (codigo_cidade),
    foreign key (codigo_estado) references estado(codigo_estado)
);

create table professor (
    codigo_professor int(6) not null,
    nome varchar(40) not null,
    codigo_cidade int(6) not null,
    codigo_curso int(6) not null,
    primary key (codigo_professor),
    foreign key (codigo_cidade) references cidade(codigo_cidade),
    foreign key (codigo_curso) references curso(codigo_curso)
);

create table aluno (
    matricula int(6) not null,
    nome varchar(40) not null,
    endereco varchar(40) not null,
    telefone int(14) not null,
    codigo_cidade int(6) not null,
    codigo_curso int(6) not null,
    primary key (matricula),
    foreign key (codigo_cidade) references cidade(codigo_cidade),
    foreign key (codigo_curso) references curso(codigo_curso)
);

create table disciplina (
    codigo_disciplina int(6) not null,
    nome varchar(40) not null,
    codigo_curso int(6) not null,
    codigo_professor int(6) not null,
    primary key (codigo_disciplina),
    foreign key (codigo_curso) references curso(codigo_curso),
    foreign key (codigo_professor) references professor(codigo_professor)
);

insert into estado(codigo_estado,nome) values(1,"Santa Catarina"); -- Coloca dados dentro da table estado, sendo o values os dados a serem colocados
insert into estado(codigo_estado,nome) values(2,"Paraná");
insert into estado(codigo_estado,nome) values(3,"Rio Grande do Sul");

insert into cidade(codigo_cidade,nome,codigo_estado) values(1,"Criciúma",1);
insert into cidade(codigo_cidade,nome,codigo_estado) values(2,"Curitiba",2);
insert into cidade(codigo_cidade,nome,codigo_estado) values(3,"Santa Maria",3);

insert into curso(codigo_curso,nome) values(1,"Informática");
insert into curso(codigo_curso,nome) values(2,"Mecatrônica");
insert into curso(codigo_curso,nome) values(3,"Design");

insert into aluno(matricula,nome,endereco,telefone,codigo_cidade,codigo_curso) values(123456,"Fernando Gonçalves","Rua Pedro Loos",2231458739,1,1);

insert into professor(codigo_professor,nome,codigo_cidade,codigo_curso) values(1,"Rodrigo",1,1);

insert into disciplina(codigo_disciplina,nome,codigo_curso,codigo_professor) values(1,"Linguagem de Programação",1,1);
