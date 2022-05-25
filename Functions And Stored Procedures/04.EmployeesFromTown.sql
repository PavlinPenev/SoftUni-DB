CREATE PROC usp_GetEmployeesFromTown (@townName NVARCHAR(MAX))
AS
BEGIN
	SELECT 
		[FirstName][First Name]
		,[LastName][Last Name]
	FROM [Employees][e]
	LEFT JOIN [Addresses][a] ON [e].[AddressID] = [a].[AddressID]
	LEFT JOIN [Towns][t] ON [a].[TownID] = [t].[TownID]
	WHERE [t].[Name] LIKE @townName
END