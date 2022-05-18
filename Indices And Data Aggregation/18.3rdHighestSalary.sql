SELECT [DepartmentID], [RankedTable].[Salary] [ThirdHighestSalary]
FROM (SELECT [DepartmentID], 
			 [Salary], 
			 DENSE_RANK() OVER(PARTITION BY [DepartmentID] ORDER BY [Salary] DESC)[Rank]
		FROM [Employees]
		GROUP BY [DepartmentID],[Salary]) [RankedTable]
WHERE [Rank] = 3