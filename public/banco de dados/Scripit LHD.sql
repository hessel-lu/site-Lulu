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
fk_idUsuarioAdm int,
foreign key (fk_idUsuario) references usuario (idUsuario)
);

create table demanda (
idDemanda int auto_increment,
fk_idUsuario int,
foreign key (fk_idUsuario) references usuario (idUsuario),
primary key (idDemanda, fk_idUsuario),
dtInicio date,
dtTermino date,
descricao varchar(250),
preco decimal(10,2)
);

create table statusUsuario (
idStatus int auto_increment,
fk_idUsuario int,
foreign key (fk_idUsuario) references usuario (idUsuario),
primary key (idStatus, fk_idUsuario),
statusUser varchar(7),
newsLetter varchar(3)
);

select * from usuario;
select * from demanda;
select * from statusUsuario;

-- Comandos:

-- cadastrando adm como responsável da cliente:
update usuario set fk_idUsuarioAdm = 1 where idUsuario = 2;  


-- inserindo os valores da demanda:
insert into demanda values
	(null, 2, '2022-06-06', '2022-06-27', 'Planejamento do armário bh', 150.00);


-- visualizando as tabelas usuário join demanda de dois jeitos:
select * from usuario join demanda on usuario.idUsuario = demanda.fk_idUsuario where usuario.idUsuario = 2;

-- ou     
select usuario.idUsuario, usuario.primeiroNome as 'Cliente',  demanda.descricao as 'Descrição'
	from usuario join demanda 
		on usuario.idUsuario = demanda.fk_idUsuario 
			where usuario.idUsuario = 2;


-- add status da nossa cliente fiel:
insert into statusUsuario values
	(null, 2, 'ativo', 'sim');