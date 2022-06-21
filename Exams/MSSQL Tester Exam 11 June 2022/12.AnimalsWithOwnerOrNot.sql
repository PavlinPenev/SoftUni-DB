CREATE PROC usp_AnimalsWithOwnersOrNot(@AnimalName VARCHAR(MAX))
AS
BEGIN
	DECLARE @ForAdoption VARCHAR(MAX) = 'For adoption';
	SELECT
		a.[Name],
		(CASE
			WHEN a.OwnerId IS NULL THEN @ForAdoption
			ELSE o.[Name]
		END) AS OwnersName
	FROM Owners o 
	RIGHT JOIN Animals a ON a.OwnerId = o.Id
	WHERE a.[Name] LIKE @AnimalName
END