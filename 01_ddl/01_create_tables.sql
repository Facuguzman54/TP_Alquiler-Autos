CREATE TABLE CLIENTES (
    id_Cliente INT PRIMARY KEY,
    nombre VARCHAR(100),
    dni VARCHAR(20) UNIQUE,
    telefono VARCHAR(20),
    direccion VARCHAR(150)
);

CREATE TABLE VEHICULOS (
    id_Vehiculo INT PRIMARY KEY,
    marca VARCHAR(150),
    modelo VARCHAR(150),
    patente VARCHAR(9),
    precio_dia DECIMAL (10,2),
    disponible BOOLEAN DEFAULT TRUE
);


CREATE TABLE ALQUILERES (
    id_Alquiler INT PRIMARY KEY,
    id_Cliente INT,
    id_Vehiculo INT,
    fecha_Inicio DATE,
    fecha_Fin DATE,
    estado BOOLEAN DEFAULT TRUE,
    total DECIMAL (10,2),
    FOREIGN KEY (id_Cliente) REFERENCES CLIENTES(id_Cliente),
    FOREIGN KEY (id_Vehiculo) REFERENCES VEHICULOS(id_Vehiculo)
);

CREATE TABLE PAGOS (
    id_Pago INT PRIMARY KEY,
    id_Alquiler INT,
    monto DECIMAL (10,2),
    fecha DATE,
    metodo_pago VARCHAR (30),
   	FOREIGN KEY (id_Alquiler) REFERENCES ALQUILERES(id_Alquiler)
);