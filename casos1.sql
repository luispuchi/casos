DROP TABLE liquidacion;
DROP TABLE trabajador;
DROP TABLE departamento;

CREATE TABLE departamento
(id INT PRIMARY KEY,
 nombre VARCHAR(20)
);

CREATE TABLE trabajador
(rut VARCHAR(15)PRIMARY KEY ,
 nombre VARCHAR(50),
 direccion VARCHAR(50),
FOREIGN KEY (id_depto) REFERENCES casa(id)
id_depto INT,
);

CREATE TABLE liquidacion
(id  INT PRIMARY KEY,
 rut_t VARCHAR(15),
 monto INT,
 FOREIGN KEY (rut_t) REFERENCES rut
);