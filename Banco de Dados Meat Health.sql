-- CRIANDO BANCO DE DADOS PARA MEAT HEALTH
create database MeatHealth;
-- SELECIONANDO O BANCO DE DADOS MEAT HEALTH
use MeatHealth;
-- CRIANDO TABELAS
-- CLIENTES
create table clientes (idClientes int primary key auto_increment, nome varchar(50), 
razaoSocial varchar(80), 
cpf_cnpj varchar(20), 
cep char(8), numeroEndereco varchar(8), email varchar(30), telefone varchar(10),
celular varchar(11), ramo varchar(20), dataCadastro datetime, usuario varchar(20),
senha varchar(20), status varchar(7), tipoCobranca varchar(6));  
-- APARELHOS
create table aparelhos (idAparelho int primary key auto_increment, modelo varchar(20), idCliente int,
dataFabricacao date); 
-- PAGAMENTOS
create table pagamentos (idFatura int primary key auto_increment, idCliente int, situacao varchar(20), datahora datetime, datavenc date);
-- REGISTROS AUDITORIA
create table registrosAuditoria (idRegistro int primary key auto_increment, temperatura decimal(4,2), umidade decimal(4,1), dataHora datetime, idAparelho int);
