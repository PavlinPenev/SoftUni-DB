CREATE PROC usp_AssignEmployeeToReport(@EmployeeId INT, @ReportId INT)
AS
BEGIN
	DECLARE @employeeDepartmentId INT;
	SET @employeeDepartmentId = (SELECT d.Id 
								FROM Employees e
								JOIN Departments d ON d.Id = e.DepartmentId 
								WHERE e.Id = @EmployeeId)
	DECLARE @reportDepartmentId INT;
	SET @reportDepartmentId = (SELECT d.Id
							  FROM Reports r
							  JOIN Categories c ON r.CategoryId = c.Id
							  JOIN Departments d ON d.Id = c.DepartmentId
							  WHERE r.Id = @ReportId)
	IF(@employeeDepartmentId = @reportDepartmentId)
		UPDATE Reports
		SET EmployeeId = @EmployeeId
		WHERE Id = @ReportId
	ELSE
		RAISERROR('Employee doesn''t belong to the appropriate department!', 16, 1);
END