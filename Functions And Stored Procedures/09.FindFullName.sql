CREATE PROC usp_GetHoldersFullName AS
BEGIN
	SELECT CONCAT([FirstName], ' ', [LastName])[Full Name]
	FROM [AccountHolders]
END