CREATE PROC usp_GetEmployeesSalaryAbove35000 
AS
BEGIN
	SELECT [FirstName] [First Name], [LastName] [Last Name]
	FROM [Employees]
	WHERE [Salary] > 35000
END