USE [Ferreteria2.0]

select * from PROVEDOR

/*INSERT 1*/
INSERT into PROVEDOR(id_provedor,nombre,direccion,telefono,celular) values (NEWID(),'Homedepot','Pablo Livas',83,81) 
INSERT into PROVEDOR(id_provedor,nombre,direccion,telefono,celular) values (NEWID(),'LOWES','Eloy Cavazos',93,71) 

/*INSERT 2*/
INSERT into PROVEDOR values (NEWID(),'Proveedor Magico','Narnia',66,99)
INSERT into CLIENTES values (NEWID(),'Isaac','Alvarado','Bermudez','AAB199','Guadalupe',33,6,'correofake','Thunderzeta','password')


/*INSERT 3*/

INSERT into PROVEDOR select NEWID(),'Proveedor NotanMagico','Narniafake',33,45

/*INSERT 4*/
select * from PROVEDOR 
select * from CLIENTES

INSERT into PROVEDOR select NEWID(),'Proveedor NotanMagico','Narniafake',33,45 from CLIENTES


/*Tabla temporal*/
select * into #PROVEDORTemp from PROVEDOR
select * from #PROVEDORTemp

/*Update*/

update PROVEDOR SET nombre = 'AndreaProveedora'
from PROVEDOR
WHERE direccion LIKE '%zos'  

select * from PROVEDOR

/*Delete*/

delete from PROVEDOR where direccion not like 'Pablo%' 

