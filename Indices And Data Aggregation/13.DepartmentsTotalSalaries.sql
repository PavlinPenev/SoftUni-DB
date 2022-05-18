SELECT [DepartmentID], SUM([Salary])[TotalSalary]
FROM [Employees]
GROUP BY [DepartmentID]