SELECT TOP(5) e.[EmployeeID], e.[FirstName], p.[Name]
FROM [Employees] e
JOIN [EmployeesProjects] ep ON e.[EmployeeID] = ep.[EmployeeID]
JOIN [Projects] p ON ep.[ProjectID] = p.[ProjectID]
WHERE p.[StartDate] > '2002-08-13' AND p.[EndDate] IS NULL
ORDER BY e.[EmployeeID]