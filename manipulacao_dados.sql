create database emprestimo_livros;
use emprestimo_livros;

create table leitor (
    id_leitor int auto_increment primary key,
    nome varchar(100) not null,
    telefone char(11) not null, 
    email varchar(100) not null
);

create table livro (
    id_livro int auto_increment primary key,
    titulo varchar (50) not null,
    autor varchar (50) not null,
    ano int
);

create table emprestimo (
    id_emprestimo int auto_increment primary key,
    data_emprestimo date not null,
    data_devolucao date not null, 
    status enum ('emprestado','devolvido') not null,
    fk_id_leitor int not null,
    foreign key (fk_id_leitor) references leitor (id_leitor),
    fk_id_livro int not null,
    foreign key (fk_id_livro) references livro (id_livro) 
);

insert into leitor (nome, telefone, email) values
('Ana Silva', '16999990001', 'ana@email.com'),
('Bruno Souza', '16999990002', 'bruno@email.com'),
('Carlos Lima', '16999990003', 'carlos@email.com'),
('Daniela Rocha', '16999990004', 'daniela@email.com'),
('Eduardo Alves', '16999990005', 'eduardo@email.com');

insert into livro (titulo, autor, ano) values
('Dom Casmurro', 'Machado de Assis', 1899),
('O Pequeno Príncipe', 'Antoine de Saint-Exupéry', 1943),
('1984', 'George Orwell', 1949),
('Capitães da Areia', 'Jorge Amado', 1937),
('A Revolução dos Bichos', 'George Orwell', 1945);

INSERT INTO emprestimo 
(data_emprestimo, data_devolucao, status, fk_id_leitor, fk_id_livro)
VALUES
('2026-04-01','2026-04-10','emprestado',1,1),
('2026-04-01','2026-04-10','emprestado',2,2),
('2026-03-28','2026-04-05','devolvido',3,3),
('2026-03-20','2026-03-30','devolvido',4,4),
('2026-04-02','2026-04-12','emprestado',5,5),
('2026-03-15','2026-03-25','devolvido',1,2),
('2026-03-18','2026-03-28','devolvido',2,3),
('2026-04-02','2026-04-15','emprestado',3,1);

-- Fazer consultas que mostrem:

-- todos os leitores cadastrados
select * from leitor;

-- todos os livros cadastrados
select * from livro;

-- todos os empréstimos realizados
select * from emprestimo;

-- nome do leitor e título do livro em cada empréstimo
select le.nome, li.titulo, em.data_emprestimo, em.status 
from emprestimo em 
join leitor le on em.fk_id_leitor = le.id_leitor
join livro li on em.fk_id_livro = li.id_livro;

-- empréstimos ainda não devolvidos
select * from emprestimo where status = 'emprestado';

-- nome das pessoas que estão com os livros (esse eu que quis fazer de curiosidade)
select le.nome, em.status
from emprestimo em
join leitor le on em.fk_id_leitor = le.id_leitor
where status = 'emprestado';

-- Atualizar:
-- o telefone ou e-mail de um leitor
update leitor set telefone = '16991918777' where id_leitor = 1;

-- a data real de devolução e o status de um empréstimo
update emprestimo set data_devolucao = '2026-04-09', status = 'devolvido'
where id_emprestimo = 1;

-- Excluir:
-- um empréstimo

delete from emprestimo where id_emprestimo = 8;

-- um leitor ou livro, desde que isso não viole integridade referencial
DELETE FROM emprestimo
WHERE fk_id_leitor = 5;

delete from leitor where id_leitor = 5;

