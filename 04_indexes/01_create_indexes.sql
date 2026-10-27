CREATE INDEX idx_clientes_direccion
    ON CLIENTES (direccion);

CREATE INDEX idx_vehiculos_marca_modelo
    ON VEHICULOS (marca, modelo);

CREATE INDEX idx_alquileres_fechas
    ON ALQUILERES (fecha_Inicio, fecha_Fin);

CREATE INDEX idx_pagos_fecha
    ON PAGOS (fecha);
