SELECT 
		[Description],
		FORMAT(OpenDate, 'dd-MM-yyyy')OpenDate 
FROM Reports
WHERE EmployeeId IS NULL
ORDER BY Reports.OpenDate, [Description]