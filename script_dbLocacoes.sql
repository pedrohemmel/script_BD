-- Apagando banco de dados criado - Cuidado ao apagar DB não tem retorno
drop database dbLocacoes;

-- Criando banco de dados
create database dbLocacoes;

-- Visualizar se o banco foi criado
show databases;

-- Acessando o banco de dados criado
use dbLocacoes;

-- Criar as tabelas no banco de dados
create table tbTitulos(
codTit int,
nome varchar(45),
tipo varchar(45),
locado int
);

create table tbLocacoes(
codLoc int,
codCli int,
codTit int,
dataSaida datetime,
dataRetorno datetime
);

create table tbClientes(
codCli int,
nome varchar(45),
endereco varchar(45),
numero varchar(10),
bairro varchar(45),
cidade varchar(45),
uf char(2),
telefone char(10)
);

CREATE TABLE PRODUTOS(
CODIGO INT,
NOME VARCHAR(50),
TIPO VARCHAR(25),
QUANTIDADE INT,
VALOR DECIMAL(10,2)
);

-- Visualizar as tabelas criadas
show tables;

-- Visualizar as ESTRUTURAS das tabelas
desc tbTitulos;
desc tbLocacoes;
desc tbClientes;

-- Inserindo registros nas tabelas

-- Tabela titulo
insert into tbTitulos(codTit,nome,tipo,locado)
	values(1,'O poderoso chefinho','Desenho',1);
insert into tbTitulos(codTit,nome,tipo,locado)
	values(2,'Um sonho de Liberdade','Filme',0);
insert into tbTitulos(codTit,nome,tipo,locado)
	values(3,'A Lista de Schindler','Filme',1);
insert into tbTitulos(codTit,nome,tipo,locado)
	values(4,'Clube da Luta','Filme',0);
insert into tbTitulos(codTit,nome,tipo,locado)
	values(5,'O Poderoso Chefao','Filme',1);
insert into tbTitulos(codTit,nome,tipo,locado)
	values(6,'O Poderoso Chefao','Filme',0);
insert into tbTitulos(codTit,nome,tipo,locado)
	values(7,'O Poderoso Chefao','Filme',0);

-- Tabela Locação
insert into tbLocacoes(codLoc,codCli,codTit,dataSaida,dataRetorno)
	values(1,1,1,'2021/08/13','2021/08/16');

-- Tabela Cliente
insert into tbClientes(codCli,nome,endereco,numero,bairro,cidade,uf,telefone)
	values(1,'Antonio Jose da Silva','Rua Marechal Rodrigues da Silveira',
		'1524','Santa Cecilia','Sao Paulo','SP','97825-4785');
insert into tbClientes(codCli,nome,endereco,numero,bairro,cidade,uf,telefone)
	values(2,'Jose Antunes','Rua Flores Belas',
		'13','Cidade das Aguas','Sao Paulo','SP','98745-5682');
insert into tbClientes(codCli,nome,endereco,numero,bairro,cidade,uf,telefone)
	values(3,'Maria do Rosario','Alameda dos Maracatins',
		'125','Ibirapuera','Sao Paulo','SP','95274-8475');
insert into tbClientes(codCli,nome,endereco,numero,bairro,cidade,uf,telefone)
	values(4,'Emilia Gonçalves da Silveira','Travessa das Rosas',
		'04','Parque da Luz','Sao Paulo','SP','95235-6352');
insert into tbClientes(codCli,nome,endereco,numero,bairro,cidade,uf,telefone)
	values(5,'Mirandir da Costa Aguiar','Rua Juvenal Venancio',
		'14','Parque Juventos','Sao Paulo','SP','97412-5214');

-- Inserindo registros na tabela produtos

INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 1,'IMPRESSORA', 'INFORMATICA', 200, 600.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 2,'CAMERA DIGITAL', 'DIGITAIS', 300, 400.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 3,'DVD PLAYER', 'ELETRONICOS', 250, 500.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 4,'MONITOR', 'INFORMATICA', 400, 900.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 5,'TELEVISOR', 'ELETRONICOS', 350, 650.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 6,'FILMADORA DIGITAL', 'DIGITAIS', 500, 700.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 7,'CELULAR', 'TELEFONE', 450, 850.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 8,'TECLADO', 'INFORMATICA', 300, 450.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 9,'VIDEOCASSETE', 'ELETRONICOS', 200, 300.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 10,'MOUSE', 'INFORMATICA', 400, 60.00 );

-- Visualizar os REGISTROS/DADOS nas tabelas criadas

select * from tbTitulos;
select * from tbLocacoes;
select * from tbClientes;

-- O asterisco significa - que você irá pesquisar todos as colunas e todos os registros
-- inseridos nessas colunas

-- from - é a ligação entre as tabelas - depois o nome da tabela

-- Apagando tabelas no banco de dados - CUIDADO AO APAGAR A TABELA NÃO TEM COMO RETORNAR

-- drop table tbTitulos;

