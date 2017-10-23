USE [Ferreteria2.0]

INSERT into PROVEDOR(id_provedor,nombre,direccion,telefono,celular) values (NEWID(),'Homedepot','Pablo Livas',83,81) 
INSERT into PROVEDOR(id_provedor,nombre,direccion,telefono,celular) values (NEWID(),'LOWES','Eloy Cavazos',93,71) 
INSERT into PROVEDOR(id_provedor,nombre,direccion,telefono,celular) values (NEWID(),'LOWES','Huajuco',67,81) 
INSERT into PROVEDOR(id_provedor,nombre,direccion,telefono,celular) values (NEWID(),'ADOSA','Juan Ayolas',890,9087)
INSERT into PROVEDOR(id_provedor,nombre,direccion,telefono,celular) values (NEWID(),'WALMART','Pablo Marmol',5678,1214)

INSERT into CLIENTES(id_cliente,nombres,apellido_pat,apellido_mat,rfc,direccion,telefono,edad,email,nickname,password) values (NEWID(),'Jose','Rodriguez','Pineda',4565678,'Villa Mitras',83893,36,'joserdz@hotmail.com','Josesito','contr4señ4') 
INSERT into CLIENTES(id_cliente,nombres,apellido_pat,apellido_mat,rfc,direccion,telefono,edad,email,nickname,password) values (NEWID(),'Andrea','Lozada','Rodriguez','AELR980203','Ranchito',811610,19,'andylozrdz@hotmail.com','Andypandy','TengoUnaSerpienteEnMiBota') 
INSERT into CLIENTES(id_cliente,nombres,apellido_pat,apellido_mat,rfc,direccion,telefono,edad,email,nickname,password) values (NEWID(),'Alberto','Rodriguez','Salas','AARS8978','Villa Del Sol',890348,28,'armandiux@gmail.com','El papu','Resguardado') 

INSERT into VENTAS(id_folio,id_cliente,fecha,monto) values (NEWID(),'2368EFEE-5919-435B-8335-0B4B47D7A6FC','2017-10-22',235) 
INSERT into VENTAS(id_folio,id_cliente,fecha,monto) values (NEWID(),'A5E268F7-B35E-45EE-9906-26828F66E5F0','2017-10-20 11:24:03.0',678) 
INSERT into VENTAS(id_folio,id_cliente,fecha,monto) values (NEWID(),'1DF0C0FC-6FB6-45F9-8398-9ACF8CFDDD10','2017-09-12 09:44:07.0',956) 

select * from CLIENTES
select * from VENTAS
select * from PROVEDOR

/*Select con group by*/
SELECT nombre,telefono
FROM PROVEDOR
group by telefono, nombre

/*Select con 1 columna y 3 funciones agregadas*/
SELECT  MAX (monto) as 'Mayor Venta' , AVG (monto) as 'Promedio del monto vendido' , COUNT (id_cliente) as 'Conteo de los Clientes' 
FROM VENTAS

/* 2 Select con where*/
SELECT monto
FROM VENTAS
WHERE monto BETWEEN 500 AND 1000

SELECT COUNT (direccion) as 'Numero de Provedores'
FROM PROVEDOR
WHERE direccion LIKE'Pablo%'


/*2 Select con having */
SELECT (id_folio) ,SUM (monto) as 'Suma del monto'
FROM VENTAS
GROUP BY (id_folio)
HAVING SUM(monto) > 700


SELECT (direccion),COUNT (nombre) AS 'Sucursales repetidas'
FROM PROVEDOR
GROUP BY(direccion)
HAVING COUNT (direccion) > 2 

/* SELECT con TOP*/
SELECT TOP 50 PERCENT nombre
FROM PROVEDOR



