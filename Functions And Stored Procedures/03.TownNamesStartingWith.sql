CREATE PROC usp_GetTownsStartingWith (@searchCriteria NVARCHAR(MAX))
AS
BEGIN
	DECLARE @regex NVARCHAR(MAX)
	SET @regex = @searchCriteria + '%'
	SELECT [Name] [Town] FROM [Towns]
	WHERE [Name] LIKE @regex
END