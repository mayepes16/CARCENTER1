/*El siguiente procedimiento es el encargado de generar el valor de la factura o no de acuerdo
a los requisitos establecidos, este tambien se encargada de la validacion del presupuesto
del cliente, realiza la resta del Stock por cada repuesto vendido y de igual manera aplica
el 19% del IVA al total de la factura*/
--PROCEDIMIENTO DESARROLLADO EN ORACLE
CREATE OR REPLACE PROCEDURE "Genera_Factura" (
    V_Doc_Cliente  IN   NUMBER,
    V_Doc_Mecanico IN   NUMBER,
    V_ID_Repuesto  IN   NUMBER,
    V_Cant_Rep     IN   NUMBER, 
    V_ID_Servicio  IN   NUMBER,
    V_Presupuesto  IN   NUMBER,
    V_TOTAL         OUT  NUMBER
) IS

    T_REPUESTO  NUMBER(20);
    T_SERVICIO  NUMBER(20);
    T_Fact      NUMBER(20);

BEGIN
    
    --SE EXTRAE EL TOTAL DE TODOS REPUESTOS 
    SELECT SUM(PRECIO)
    INTO T_REPUESTO
    FROM Repuesto
    WHERE ID_Repuesto IN (V_ID_Repuesto);
    
    --SE EXTRAE EL TOTAL DE TODOS SERVICIOS
    SELECT SUM(PRECIO)
    INTO T_SERVICIO
    FROM Servicio
    WHERE ID_Servicio IN (V_ID_Servicio);
    
    --SE APLICA DESCUENTO A LOS SERVICIOS DEL 50%
    IF T_REPUESTO > 3000000 THEN
        T_SERVICIO := T_SERVICIO * 0.5;  
    END IF;
    
    --SE RESTA EL REPUESTO VENDIDO
    UPDATE REPUESTO SET STOCK = STOCK - V_Cant_Rep
    WHERE ID_Repuesto = V_ID_Repuesto;

     --SE GENERA TOTAL DE FACTURA CON EL 19% APLICADO
    T_Fact := T_REPUESTO + T_SERVICIO * 0.19;
    
    --SE VALIDA SI EL TOTAL DE LA FACTURA ES MAYOR AL PRESUPUESTO
    IF T_Fact > V_Presupuesto THEN
        dbms_output.put_line('El total de la factura supera el presupuesto que establecio el cliente');
    ELSE    
        dbms_output.put_line('El total de la factura es: '||T_Fact);
    END IF;

    V_TOTAL := T_Fact;

END Genera_Factura;