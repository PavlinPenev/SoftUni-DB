SELECT TOP(50)
			e.[EmployeeID],
			e.[FirstName] + ' ' + e.[LastName] AS [EmployeeName],
			em.[FirstName] + ' ' + em.[LastName] AS [ManagerName],
			d.[Name] AS [DepartmentName]
FROM [Employees] e
JOIN [Employees] em ON e.[ManagerID] = em.[EmployeeID]
JOIN [Departments] d ON d.[DepartmentID] = e.[DepartmentID]
ORDER BY e.[EmployeeID]
