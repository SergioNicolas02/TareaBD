CREATE FUNCTION ContarEmergencia()
RETURNS TABLE
AS
RETURN (
    SELECT Tipo_emergencia, COUNT(*) AS TotalEmergencias
    FROM Tipo_emergencia
    GROUP BY Tipo_emergencia
);

SELECT * FROM ContarEmergencia();
