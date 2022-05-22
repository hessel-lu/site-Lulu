create database lhDesign;
use lhDesign;

-- tabela cadastro, onde ficaram os clientes cadastrados a partir do id 02, pois, id 01 é adm Lucas Hessel reponsável pelos clientes.
create table cadastro (
idUsuario int primary key auto_increment,
primeiroNome varchar(30),
ultimoNome varchar(30),
dtNascimento date,
CEP varchar(10),
profissao varchar(30),
genero varchar(10),
senha varchar(8),
fk_idUsuarioAdm int,
foreign key (fk_idUsuarioAdm) references cadastro (idUsuario)
);

select * from cadastro;

insert into cadastro
	values (null, 'Lucas', 'Hessel', '2001-03-27', '08235-530', null, 'masculino', 'Luc@s123', null);
    
insert into cadastro
	values (null, 'Denise', 'Conceição', '1980-08-25', '02464010', 'Biomedica', 'feminino', '12345678', 1);
 
-- tabela demanda é responsável em guardar o id, descrição e preço do serviço
create table demanda (
idDemanda int primary key auto_increment,
descricao varchar(100),
preco decimal(10,2)
);

select * from demanda;

insert into demanda 
	values (null, 'Planejamento de armário para banheiro', 200.00);
    
-- tabela situação é associativa
-- create table situacao ();