INSERT INTO CLIENTES (id_Cliente, nombre, dni, telefono, direccion) VALUES
(1, 'Valentina Quiroga', '38274619', '2615557284', 'Godoy Cruz'),
(2, 'Nicolas Ferreyra', '41753082', '3514789162', 'Villa Carlos Paz'),
(3, 'Camila Benitez', '40591827', '3416128430', 'Rosario'),
(4, 'Mateo Sosa', '37184620', '2994557618', 'Neuquen'),
(5, 'Sofia Mansilla', '42830715', '2235091846', 'Mar del Plata'),
(6, 'Tomas Roldan', '39467251', '3816439027', 'San Miguel de Tucuman'),
(7, 'Julieta Acosta', '43619508', '2215716384', 'La Plata'),
(8, 'Agustin Navarro', '40182736', '2616127345', 'Godoy Cruz'),
(9, 'Martina Paredes', '44563821', '3516892457', 'Cordoba'),
(10, 'Bruno Ibarra', '38917452', '3415789361', 'Rosario');


INSERT INTO VEHICULOS (id_Vehiculo, marca, modelo, patente, precio_dia, disponible) VALUES
(1, 'TOYOTA', 'ETIOS', 'AE482LM', 85000, TRUE),
(2, 'VOLKSWAGEN', 'VIRTUS', 'AF731QZ', 135000, TRUE),
(3, 'FIAT', 'CRONOS', 'AG196RT', 105000, TRUE),
(4, 'NISSAN', 'KICKS', 'AC904NV', 150000, FALSE),
(5, 'HONDA', 'CIVIC', 'AD573KS', 95000, TRUE),
(6, 'CITROEN', 'C4', 'AF268WD', 125000, TRUE),
(7, 'JEEP', 'RENEGADE', 'AG845PX', 115000, FALSE),
(8, 'RENAULT', 'DUSTER', 'AH384BT', 110000, TRUE),
(9, 'CHEVROLET', 'CRUZE', 'AI927LX', 130000, TRUE),
(10, 'FORD', 'TERRITORY', 'AJ615MV', 165000, TRUE);

INSERT INTO ALQUILERES (id_Alquiler, id_Cliente, id_Vehiculo, fecha_Inicio, fecha_Fin, estado, total) VALUES
(1, 1, 1, '2026-10-01', '2026-10-04', TRUE, 255000),
(2, 2, 2, '2026-09-18', '2026-09-22', TRUE, 675000),
(3, 3, 3, '2026-10-05', '2026-10-08', TRUE, 315000),
(4, 4, 4, '2026-09-01', '2026-09-06', TRUE, 750000),
(5, 5, 5, '2026-08-12', '2026-08-15', TRUE, 285000),
(6, 6, 6, '2026-08-20', '2026-08-24', TRUE, 500000),
(7, 7, 7, '2026-09-25', '2026-09-29', TRUE, 460000),
(8, 8, 8, '2026-09-02', '2026-09-05', TRUE, 330000),
(9, 9, 8, '2026-09-10', '2026-09-12', TRUE, 220000),
(10, 10, 8, '2026-10-10', '2026-10-13', TRUE, 330000),
(11, 8, 9, '2026-09-15', '2026-09-18', TRUE, 390000),
(12, 9, 9, '2026-10-02', '2026-10-05', TRUE, 390000),
(13, 10, 10, '2026-09-20', '2026-09-22', TRUE, 495000);

INSERT INTO PAGOS (id_Pago, id_Alquiler, monto, fecha, metodo_pago) VALUES
(1, 1, 255000, '2026-10-04', 'Transferencia'),
(2, 2, 675000, '2026-09-22', 'Tarjeta de Debito'),
(3, 3, 315000, '2026-10-08', 'Efectivo'),
(4, 4, 750000, '2026-09-06', 'Transferencia'),
(5, 5, 285000, '2026-08-15', 'Tarjeta de Credito'),
(6, 6, 500000, '2026-08-24', 'Mercado Pago'),
(7, 7, 460000, '2026-09-29', 'Tarjeta de Debito'),
(8, 8, 330000, '2026-09-05', 'Transferencia'),
(9, 9, 220000, '2026-09-12', 'Tarjeta de Credito'),
(10, 10, 330000, '2026-10-13', 'Efectivo'),
(11, 11, 390000, '2026-09-18', 'Mercado Pago'),
(12, 12, 390000, '2026-10-05', 'Tarjeta de Debito'),
(13, 13, 495000, '2026-09-22', 'Transferencia');