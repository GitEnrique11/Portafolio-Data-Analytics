SELECT h.Nombre AS Hospital, COUNT(c.Cirugia_ID) AS TotalCirugias
FROM Cirugias c
JOIN Hospitales h ON c.Hospital_ID = h.Hospital_ID
GROUP BY h.Nombre
ORDER BY TotalCirugias DESC;

SELECT m.Especialidad, AVG(p.Edad) AS EdadPromedio
FROM Cirugias c
JOIN Medicos m ON c.Medico_ID = m.Medico_ID
JOIN Pacientes p ON c.Paciente_ID = p.Paciente_ID
GROUP BY m.Especialidad
ORDER BY EdadPromedio DESC;

SELECT s.Nombre AS Seguro, COUNT(c.Cirugia_ID) AS TotalCirugias
FROM Cirugias c
JOIN Pacientes p ON c.Paciente_ID = p.Paciente_ID
JOIN Seguros s ON p.Seguro_ID = s.Seguro_ID
GROUP BY s.Nombre
ORDER BY TotalCirugias DESC;

SELECT m.Nombre AS Medico, COUNT(c.Cirugia_ID) AS TotalCirugias
FROM Cirugias c
JOIN Medicos m ON c.Medico_ID = m.Medico_ID
GROUP BY m.Nombre
ORDER BY TotalCirugias DESC;

SELECT p.Nombre AS Paciente, COUNT(c.Cirugia_ID) AS NumeroCirugias
FROM Cirugias c
JOIN Pacientes p ON c.Paciente_ID = p.Paciente_ID
GROUP BY p.Nombre
HAVING COUNT(c.Cirugia_ID) > 1
ORDER BY NumeroCirugias DESC;

SELECT FORMAT(c.Fecha, 'yyyy-MM') AS Mes, COUNT(*) AS TotalCirugias
FROM Cirugias c
GROUP BY FORMAT(c.Fecha, 'yyyy-MM')
ORDER BY Mes;

SELECT h.Nombre AS Hospital, m.Especialidad, COUNT(c.Cirugia_ID) AS TotalCirugias
FROM Cirugias c
JOIN Hospitales h ON c.Hospital_ID = h.Hospital_ID
JOIN Medicos m ON c.Medico_ID = m.Medico_ID
GROUP BY h.Nombre, m.Especialidad
ORDER BY h.Nombre, TotalCirugias DESC;
