CREATE FUNCTION udf_ClientWithCigars(@name NVARCHAR(MAX))
RETURNS INT
AS 
BEGIN
	DECLARE @countOfCigars INT;
	SET @countOfCigars =
	(SELECT 
		COUNT(*) 
	FROM Clients cl
	JOIN ClientsCigars cc ON cc.ClientId = cl.Id
	JOIN Cigars c ON cc.CigarId = c.Id
	WHERE cl.FirstName LIKE @name)
	RETURN @countOfCigars
END