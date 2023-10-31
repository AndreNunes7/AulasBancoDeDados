use IMOVEIS
go

Update Imovel
	set vl_Imovel = vl_Imovel * 1.12

go

Update Imovel
	set vl_Imovel = vl_Imovel * 0.95
	where cd_vendedor = 1

go
Update Comprador
	set ds_Endereco = 'R. Ananás, 45',
	sg_Estado = 'RJ'
	where cd_Comprador = 3

go
Update Oferta
	set vl_Oferta = 101.000
	where cd_Comprador = 2 and cd_Imovel = 4


go

delete Oferta
	where cd_Comprador = 2 and cd_Imovel = 1


go
	
ALTER TABLE Oferta 
	Add qt_Parcelas int



Alter table Oferta 
	Drop column qt_Parcelas