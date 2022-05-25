CREATE PROC usp_GetEmployeesSalaryAboveNumber (@treshold DECIMAL(18,4))
AS
BEGIN
	SELECT [FirstName] [First Name], [LastName] [Last Name]
	FROM [Employees]
	WHERE [Salary] >= @treshold
END