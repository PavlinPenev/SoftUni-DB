SELECT [FirstName]
FROM [Employees] 
WHERE [DepartmentID] = 3 OR [DepartmentID] = 10
		AND (DATEPART(YEAR, [HireDate]) >= 1995 
		AND DATEPART(YEAR, [HireDate]) <= 2005)