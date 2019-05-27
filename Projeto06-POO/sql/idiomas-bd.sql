drop table curso;

create table curso(
        id_curso bigint not null primary key
                generated always as identity
                (start with 1, increment by 1)
       ,  nome_curso varchar(50) not null
       , descricao_curso varchar(200) not null
       , nivel_curso varchar(20) not null
);

drop table professor;

create table professor(
        id_professor bigint not null primary key
                generated always as identity
                (start with 100, increment by 1)
       ,  nome_professor varchar(50) not null 
       , end_profesor varchar(200) not null 
       , tel_professor bigint not null 
       , email_professor varchar(20) not null
       , cpf_professor bigint not null
);

drop table aluno;

create table aluno(
        id_aluno bigint not null primary key
                generated always as identity
                (start with 200, increment by 1)
       ,  nome_aluno varchar(50) not null
       , end_aluno varchar(200) not null
       , tel_aluno bigint not null
       , email_aluno varchar(20) not null
       , cpf_aluno bigint not null
);

drop table turma;

create table turma(
        id_turma bigint not null primary key
                generated always as identity
                (start with 300, increment by 1)
       ,  nome_curso varchar(50) not null 
       , nome_professor varchar(200) not null 
       , nivel_curso varchar(20) not null
);

insert into aluno values
(default, 'Rafael', 'Rua A', 34266481, 'rafaelsansousa@', 1234);


