--5.	Consulta de Clientes que han comprado un acumulado $100.000 en los �ltimos 60 d�as:
SELECT *
FROM Cliente C
WHERE exists (
		SELECT 1
		FROM Factura F
		WHERE F.Total = 100000
		and F.Fecha_Fac >= GETDATE() - 60
		and c.Doc_Cliente = f.Doc_Cliente);


--6.	Consulta de los 100 productos m�s vendidos en los �ltimos 30 d�as:
SELECT COUNT(1) Cantidad,  R.Nombre
FROM Factura F JOIN Repuesto R on f.ID_Repuesto = r.ID_Repuesto
--WHERE ROWNUM() < 101 -- ROWNUM: funcion en oracle para devolver los primeros 100 registros
GROUP BY F.ID_Repuesto, R.Nombre
ORDER BY COUNT(1) DESC;

--7.	Consulta de las tiendas que han vendido m�s de 100 UND del producto 100 en los �ltimos 60 d�as:
SELECT t.nombre, COUNT(1) Cantidad
FROM Factura F JOIN Tienda T on f.ID_Tienda = t.id_tienda
WHERE ID_Repuesto = 4 -- 100
and F.Fecha_Fac >= GETDATE() - 60
GROUP BY t.nombre
having count(1) > 1; -- 100

--8.	Consulta de todos los clientes que han tenido m�s de un (1) mantenimiento en los �ltimos 30 d�as.
SELECT c.PrimerNombre, c.PrimerApellido, f.Doc_Cliente,f.ID_Servicio,COUNT(1) Can_Mante
FROM Factura F JOIN Cliente C ON F.Doc_Cliente = C.Doc_Cliente
GROUP BY f.ID_Servicio,f.Doc_Cliente,c.PrimerNombre, c.PrimerApellido
HAVING COUNT(*) > 1;