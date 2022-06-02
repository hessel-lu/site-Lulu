create database lhdesign;

use lhdesign;

create table cadastro (
idUsuario int primary key auto_increment,
primeiroNome varchar(30),
ultimoNome varchar(30),
dtNascimento date,
CEP varchar(10),
profissao varchar(30),
genero varchar(10),
email varchar(45),
senha varchar(8),
confirSenha varchar(8),
fk_idUsuarioAdm int,
foreign key (fk_idUsuarioAdm) references cadastro (idUsuario)
);

select * from cadastro;

