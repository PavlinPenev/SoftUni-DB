CREATE PROC usp_EmployeesBySalaryLevel (@salaryLevel NVARCHAR(MAX))
AS
BEGIN
	SELECT [FirstName][First Name], [LastName][Last Name]
	FROM [Employees]
	WHERE @salaryLevel LIKE dbo.ufn_GetSalaryLevel([Salary])
END