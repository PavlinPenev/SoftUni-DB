CREATE FUNCTION ufn_GetSalaryLevel(@salary DECIMAL(18,4))
RETURNS NVARCHAR(MAX)
AS
BEGIN
	DECLARE @salaryLevel NVARCHAR(MAX)
		IF @salary < 30000 
			SET @salaryLevel = 'Low'
		ELSE IF @salary <= 50000 
			SET @salaryLevel = 'Average'
		ELSE 
			SET @salaryLevel = 'High'
	RETURN @salaryLevel
END