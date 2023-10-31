 -- Banco de Dados

 
 create Database Teste
 go

 use Teste
 go


 -- Tabelas

 Create Table Venda (
	cd_Venda int not null, 
	dt_Venda datetime, 
	vl_Venda money)

go

Create Table Produto (
	cd_Produto int not null, 
	dt_Produto varchar(30), 
	vl_Produto money)

go

Create Table VendaProd (
	cd_Venda int not null, 
	dt_Produto int not null, 
	qt_Venda int)

go

-- Chave primária

Alter table Venda
	Add Primary Key (cd_Venda)

go

alter table Produto
	Add Primary key (cd_Produto)


Alter table VendaProd
	Add Primary key (cd_Venda,cd_Produto)
	

go


-- Chave estrangeira 

Alter Table VendaProd
	Add Foreign key (c_Venda)
	references Venda

go


Alter Table VendaProd
	Add Foreign Key (cd_Produto)
	references Produto




