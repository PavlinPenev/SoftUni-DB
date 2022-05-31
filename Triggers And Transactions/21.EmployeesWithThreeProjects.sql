CREATE PROC usp_AssignProject(@employeeId INT, @projectID INT)
AS
BEGIN TRANSACTION
	DECLARE @employeeProjectsCount INT = (SELECT COUNT(*) FROM [EmployeesProjects] WHERE [EmployeeID] = @employeeId)
	IF(@employeeProjectsCount >= 3)
		BEGIN
			ROLLBACK
			RAISERROR('The employee has too many projects!', 16, 1) 		
			RETURN	
		END
	INSERT INTO [EmployeesProjects] VALUES
	(@employeeId, @projectID)
COMMIT