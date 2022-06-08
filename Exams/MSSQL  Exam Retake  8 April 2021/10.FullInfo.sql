SELECT 
		CASE
             WHEN r.EmployeeId IS NULL THEN 'None'
			 ELSE CONCAT(e.FirstName, ' ', e.LastName) 
		  END [Employee],
		  ISNULL(d.[Name], 'None')[Department],
		  ISNULL(c.[Name], 'None')[Category],
		  ISNULL(r.[Description], 'None')[Description],
		  ISNULL(FORMAT(r.OpenDate, 'dd.MM.yyyy'), 'None')[OpenDate],
		  ISNULL(s.[Label], 'None')[Status],
		  ISNULL(u.[Name],'None')[User]
     FROM Reports r
LEFT JOIN Employees e ON r.EmployeeId = e.Id
LEFT JOIN Categories c ON r.CategoryId = c.Id
LEFT JOIN Departments d ON e.DepartmentId = d.Id
LEFT JOIN Users u ON r.UserId = u.Id
LEFT JOIN [Status] s ON r.StatusId = s.Id
ORDER BY 
		e.FirstName DESC,
		e.LastName DESC,
		d.[Name],
		c.[Name],
		r.[Description],
		r.OpenDate,
		s.[Label],
		u.Username