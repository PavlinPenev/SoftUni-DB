CREATE FUNCTION udf_FlightDestinationsByEmail(@email NVARCHAR(MAX))
RETURNS INT
AS 
BEGIN
	DECLARE @flightsNumber INT;
	SET @flightsNumber = (SELECT COUNT(p.Id) FROM Passengers p JOIN FlightDestinations fd ON p.Id = fd.PassengerId WHERE Email LIKE @email)
	RETURN @flightsNumber
END