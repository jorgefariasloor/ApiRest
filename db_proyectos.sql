--Crear Base de datos
CREATE DATABASE db_proyectos;

-- Tabla "Empleados"
CREATE TABLE Empleados (
    ID_Empleado INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Cargo VARCHAR(50),
    Salario DECIMAL(8,2)
);

INSERT INTO Empleados (ID_Empleado, Nombre, Cargo, Salario) VALUES
(1, 'Luis Paredes', 'Gerente', 2500.00),
(2, 'Ana Torres', 'Contador', 1800.00),
(3, 'Carlos Mendoza', 'Vendedor', 1200.00),
(4, 'Laura Castillo', 'Secretaria', 1000.00),
(5, 'Pedro López', 'Vendedor', 1100.00)

-- Tabla "proyectos"
CREATE TABLE Proyectos (
    ID_Proyecto INT PRIMARY KEY,
    Nombre_Proyecto VARCHAR(50),
    Presupuesto DECIMAL(10,2),
    Duracion_Meses INT
);

INSERT INTO Proyectos (ID_Proyecto, Nombre_Proyecto, Presupuesto, Duracion_Meses) VALUES
(1, 'Sistema Contable', 50000.00, 12),
(2, 'Rediseño Web', 15000.00, 6),
(3, 'App Móvil', 30000.00, 8),
(4, 'Marketing Digital', 10000.00, 4),
(5, 'Investigación de Mercado', 20000.00, 10);


--Consulta 1: Empleados con salario mayor a 1500.00
SELECT * 
FROM Empleados 
WHERE Salario > 1500.00;

--Consulta 2: Proyectos con duración superior a 9 meses
SELECT * 
FROM Proyectos 
WHERE Duracion_Meses > 9;

--Consulta 3: Proyectos ordenados por presupuesto descendente
SELECT * 
FROM Proyectos 
ORDER BY Presupuesto DESC;


select * from empleados;

select * from proyectos;
