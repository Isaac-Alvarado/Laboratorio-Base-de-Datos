
/*FUNCION */

CREATE FUNCTION Total (@Subtotal float)
returns float   
as
begin
return @Subtotal *1.15
end

select dbo.Total (500) as Total



/*PROCEDIMIENTOS ALMACENADOS*/


CREATE PROCEDURE P1
as 
begin
SELECT v.id_folio ,v.monto, v.Fecha_Hora ,e.nombre + ' ' + e.apellidoP as 'Nombre_Empleado', p.tipo as 'Pago'  
FROM VENTAS as v
RIGHT JOIN EMPLEADO as e on e.id_empleado = v.id_empleado
RIGHT JOIN PAGO as p on p.id_pago = v.id_pago

end

exec P1




CREATE PROCEDURE P2
as
begin
SELECT c.nombre + ' ' + c.apellidoP + ' ' + apellidoM AS Cliente , (f.fecha_factura) , f.id_factura , c.id_cliente,f.folio
FROM CLIENTES as c
INNER JOIN FACTURAS as f on f.id_factura = c.id_cliente
GROUP BY c.id_cliente,f.fecha_factura, c.nombre + ' ' + c.apellidoP + ' ' + apellidoM, f.id_factura,f.folio

end

exec P2




CREATE PROCEDURE P3
@NombreProducto varchar(50)
as
begin
SELECT e.id_entrada, e.id_producto, p.nombre, pr.nombre
FROM ENTRADAS as e 
LEFT JOIN PRODUCTOS as p on p.id_producto = e.id_producto
LEFT JOIN PROVEEDOR as pr on pr.id_provedor = e.id_provedor 
where p.nombre = @NombreProducto

end

exec P3 'Mazo'





CREATE PROCEDURE P4
@Proveedor int
as
begin
SELECT prov.nombre, p.id_producto, p.nombre,max (p.cant_disp) as 'Cantidad Producto'
FROM PRODUCTOS as p
INNER JOIN PROVEEDOR as prov on p.id_provedor = prov.id_provedor
where prov.id_provedor = @Proveedor
GROUP BY prov.nombre, p.id_producto, p.nombre
 end

 exec P4 1





 CREATE PROCEDURE P5
 as
 begin
 SELECT COUNT(dv.id_producto) as 'TiposDeProductos' , SUM(dv.cantidad) as 'CantidadDeProductos', COUNT(v.id_folio) as 'Total de ventas' ,SUM (v.monto) as 'TotalVendido', MAX(v.Fecha_Hora) as 'Ultima  Venta'
FROM DETALLE_VENTA as dv
LEFT JOIN VENTAS as v on v.id_folio= dv.id_folio
end

exec P5 

/*TRIGGER AFTER*/

create trigger tri_1
on CLIENTES
after update
as begin 
select*from Clientes as TablaClientesActualizada
end 


/* Trigger INSTEAD */

create trigger tri_2
on PRODUCTOS
instead of INSERT 
as begin

select* from PRODUCTOS

end


