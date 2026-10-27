-- 1. Mostrar todos los clientes.
SELECT * FROM CLIENTES;

-- 2. Mostrar solo los nombres y las ciudades de los clientes.
SELECT nombre, direccion FROM CLIENTES;

-- 3. ¿Cuántos clientes hay?
SELECT COUNT(*) AS total_clientes FROM CLIENTES;

-- 4. ¿Cuál es el precio promedio de los vehículos?
SELECT AVG(precio_dia) AS precio_promedio FROM VEHICULOS;


-- 5. Mostrar los alquileres con el nombre del cliente.

SELECT a.id_Alquiler, c.nombre AS nombre_cliente, a.fecha_Inicio, a.fecha_Fin, a.total
FROM ALQUILERES a
JOIN CLIENTES c ON a.id_Cliente = c.id_Cliente;

-- 6. Mostrar los pagos con la fecha y el nombre del cliente.
SELECT p.id_Pago, p.fecha, c.nombre AS nombre_cliente
FROM PAGOS p
JOIN ALQUILERES a ON p.id_Alquiler = a.id_Alquiler
JOIN CLIENTES c ON a.id_Cliente = c.id_Cliente;

-- 7. Calcular el total pagado por cliente, sin filtrar por mes.
SELECT c.id_Cliente, c.nombre, SUM(p.monto) AS total_pagado
FROM CLIENTES c
JOIN ALQUILERES a ON c.id_Cliente = a.id_Cliente
JOIN PAGOS p ON a.id_Alquiler = p.id_Alquiler
GROUP BY c.id_Cliente, c.nombre;


-- 8. Calcular el total de alquileres por vehículo, sin utilizar `LIMIT`.
SELECT v.id_Vehiculo, v.marca, v.modelo, COUNT(a.id_Alquiler) AS total_alquileres
FROM VEHICULOS v
LEFT JOIN ALQUILERES a ON v.id_Vehiculo = a.id_Vehiculo
GROUP BY v.id_Vehiculo, v.marca, v.modelo;

-- 9. Mostrar los 3 vehículos más alquilados.
SELECT v.id_Vehiculo, v.marca, v.modelo, COUNT(a.id_Alquiler) AS total_alquileres
FROM VEHICULOS v
JOIN ALQUILERES a ON v.id_Vehiculo = a.id_Vehiculo
GROUP BY v.id_Vehiculo, v.marca, v.modelo
ORDER BY total_alquileres DESC
LIMIT 3;

-- 10. Calcular el total pagado por cliente únicamente durante el mes pasado.
SELECT c.id_Cliente, c.nombre, SUM(p.monto) AS total_pagado_mes_pasado
FROM CLIENTES AS c 
JOIN ALQUILERES AS a ON c.id_Cliente = a.id_Cliente
JOIN PAGOS AS p ON a.id_Alquiler = p.id_Alquiler
WHERE p.fecha >= DATE_FORMAT(CURDATE() - INTERVAL 1 MONTH, '%Y-%m-01')
  AND p.fecha < DATE_FORMAT(CURDATE(), '%Y-%m-01')
GROUP BY c.id_Cliente, c.nombre;


-- 11. Realizar una agrupación por otra columna, como `ciudad`.

SELECT c.direccion AS ciudad, COUNT(c.id_Cliente) AS total_clientes
FROM CLIENTES AS c
GROUP BY c.direccion;
