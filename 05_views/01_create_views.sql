CREATE OR REPLACE VIEW vw_alquileres_detalle AS
SELECT
    a.id_Alquiler,
    c.nombre AS cliente,
    v.marca,
    v.modelo,
    a.fecha_Inicio,
    a.fecha_Fin,
    a.estado,
    a.total
FROM ALQUILERES AS a
JOIN CLIENTES AS c ON c.id_Cliente = a.id_Cliente
JOIN VEHICULOS AS v ON v.id_Vehiculo = a.id_Vehiculo;
