CREATE TABLE Hospitales (
    Hospital_ID INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Ciudad VARCHAR(50)
);

CREATE TABLE Seguros (
    Seguro_ID INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Cobertura VARCHAR(50)
);

CREATE TABLE Medicos (
    Medico_ID INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Especialidad VARCHAR(50),
    Hospital_ID INT,
    FOREIGN KEY (Hospital_ID) REFERENCES Hospitales(Hospital_ID)
);

CREATE TABLE Pacientes (
    Paciente_ID INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Edad INT,
    Seguro_ID INT,
    FOREIGN KEY (Seguro_ID) REFERENCES Seguros(Seguro_ID)
);

CREATE TABLE Cirugias (
    Cirugia_ID INT PRIMARY KEY,
    Fecha DATE,
    Hospital_ID INT,
    Medico_ID INT,
    Paciente_ID INT,
    FOREIGN KEY (Hospital_ID) REFERENCES Hospitales(Hospital_ID),
    FOREIGN KEY (Medico_ID) REFERENCES Medicos(Medico_ID),
    FOREIGN KEY (Paciente_ID) REFERENCES Pacientes(Paciente_ID)
);

-- Hospitales
INSERT INTO Hospitales VALUES (1, 'Hospital San José', 'Monterrey');
INSERT INTO Hospitales VALUES (2, 'Christus Muguerza', 'Monterrey');
INSERT INTO Hospitales VALUES (3, 'Hospital Ángeles', 'CDMX');
INSERT INTO Hospitales VALUES (4, 'IMSS 25', 'Monterrey');
INSERT INTO Hospitales VALUES (5, 'Hospital Zambrano', 'Monterrey');

-- Médicos
INSERT INTO Medicos VALUES (1, 'Dr. Ramírez', 'Cardiología', 1);
INSERT INTO Medicos VALUES (2, 'Dra. López', 'Neurología', 2);
INSERT INTO Medicos VALUES (3, 'Dr. Torres', 'Ortopedia', 3);
INSERT INTO Medicos VALUES (4, 'Dra. Sánchez', 'Pediatría', 4);
INSERT INTO Medicos VALUES (5, 'Dr. Martínez', 'Oncología', 5);
INSERT INTO Medicos VALUES (6, 'Dra. Díaz', 'Ginecología', 1);
INSERT INTO Medicos VALUES (7, 'Dr. Herrera', 'Urología', 2);
INSERT INTO Medicos VALUES (8, 'Dra. Castro', 'Dermatología', 3);
INSERT INTO Medicos VALUES (9, 'Dr. Gómez', 'Cirugía Gral', 4);
INSERT INTO Medicos VALUES (10, 'Dra. Morales', 'Endocrinología', 5);

-- Pacientes
INSERT INTO Pacientes VALUES (1, 'Juan Pérez', 45, 1);
INSERT INTO Pacientes VALUES (2, 'María Gómez', 32, 2);
INSERT INTO Pacientes VALUES (3, 'Luis Herrera', 60, 3);
INSERT INTO Pacientes VALUES (4, 'Ana Torres', 28, 4);
INSERT INTO Pacientes VALUES (5, 'Pedro Sánchez', 50, 5);
INSERT INTO Pacientes VALUES (6, 'Sofía Díaz', 36, 1);
INSERT INTO Pacientes VALUES (7, 'Carlos Ruiz', 41, 2);
INSERT INTO Pacientes VALUES (8, 'Laura Méndez', 29, 3);
INSERT INTO Pacientes VALUES (9, 'Jorge Ramírez', 55, 4);
INSERT INTO Pacientes VALUES (10, 'Fernanda López', 33, 5);

--Seguros
INSERT INTO Seguros (Seguro_ID, Nombre, Cobertura) VALUES (1, 'Seguro Monterrey', 'Alta cobertura');
INSERT INTO Seguros (Seguro_ID, Nombre, Cobertura) VALUES (2, 'GNP', 'Media cobertura');
INSERT INTO Seguros (Seguro_ID, Nombre, Cobertura) VALUES (3, 'AXA', 'Alta cobertura');
INSERT INTO Seguros (Seguro_ID, Nombre, Cobertura) VALUES (4, 'IMSS', 'Pública');
INSERT INTO Seguros (Seguro_ID, Nombre, Cobertura) VALUES (5, 'ISSSTE', 'Pública');

--Cirugias
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (1, '2026-05-01', 1, 1, 1);
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (2, '2026-05-02', 2, 2, 2);
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (3, '2026-05-03', 3, 3, 3);
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (4, '2026-05-04', 4, 4, 4);
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (5, '2026-05-05', 5, 5, 5);
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (6, '2026-05-06', 1, 6, 6);
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (7, '2026-05-07', 2, 7, 7);
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (8, '2026-05-08', 3, 8, 8);
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (9, '2026-05-09', 4, 9, 9);
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (10, '2026-05-10', 5, 10, 10);
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (11, '2026-05-11', 1, 1, 1);
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (12, '2026-05-12', 2, 2, 2);
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (13, '2026-05-13', 3, 3, 3);
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (14, '2026-05-14', 4, 4, 4);
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (15, '2026-05-15', 5, 5, 5);
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (16, '2026-05-16', 1, 6, 6);
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (17, '2026-05-17', 2, 7, 7);
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (18, '2026-05-18', 3, 8, 8);
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (19, '2026-05-19', 4, 9, 9);
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (20, '2026-05-20', 5, 10, 10);
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (21, '2026-05-21', 1, 1, 1);
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (22, '2026-05-22', 2, 2, 2);
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (23, '2026-05-23', 3, 3, 3);
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (24, '2026-05-24', 4, 4, 4);
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (25, '2026-05-25', 5, 5, 5);
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (26, '2026-05-26', 1, 6, 6);
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (27, '2026-05-27', 2, 7, 7);
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (28, '2026-05-28', 3, 8, 8);
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (29, '2026-05-29', 4, 9, 9);
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (30, '2026-05-30', 5, 10, 10);
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (31, '2026-05-31', 1, 1, 1);
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (32, '2026-06-01', 2, 2, 2);
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (33, '2026-06-02', 3, 3, 3);
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (34, '2026-06-03', 4, 4, 4);
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (35, '2026-06-04', 5, 5, 5);
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (36, '2026-06-05', 1, 6, 6);
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (37, '2026-06-06', 2, 7, 7);
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (38, '2026-06-07', 3, 8, 8);
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (39, '2026-06-08', 4, 9, 9);
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (40, '2026-06-09', 5, 10, 10);
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (41, '2026-06-10', 1, 1, 1);
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (42, '2026-06-11', 2, 2, 2);
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (43, '2026-06-12', 3, 3, 3);
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (44, '2026-06-13', 4, 4, 4);
INSERT INTO Cirugias (Cirugia_ID, Fecha, Hospital_ID, Medico_ID, Paciente_ID) VALUES (45, '2026-06-14', 5, 5, 5);

SELECT c.Cirugia_ID, c.Fecha, h.Nombre AS Hospital, m.Nombre AS Medico, p.Nombre AS Paciente
FROM Cirugias c
JOIN Hospitales h ON c.Hospital_ID = h.Hospital_ID
JOIN Medicos m ON c.Medico_ID = m.Medico_ID
JOIN Pacientes p ON c.Paciente_ID = p.Paciente_ID;
