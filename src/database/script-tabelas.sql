-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/* para workbench - local - desenvolvimento */
create database lhdesign;

use lhdesign;

create table usuario (
idUsuario int primary key auto_increment,
primeiroNome varchar(30),
ultimoNome varchar(30),
dtNascimento date,
CEP varchar(15),
profissao varchar(30),
genero varchar(15),
email varchar(45),
senha varchar(20),
confirSenha varchar(20),
fk_idUsuario int,
foreign key (fk_idUsuario) references usuario (idUsuario)
);


