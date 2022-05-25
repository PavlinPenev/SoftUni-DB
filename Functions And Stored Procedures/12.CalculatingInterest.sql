CREATE PROC usp_CalculateFutureValueForAccount(@accountId INT, @intRate FLOAT)
AS
BEGIN
	SELECT
		[a].[Id] [Account Id]
		,[ah].[FirstName] [First Name]
		,[ah].[LastName] [Last Name]
		,[a].[Balance] [Current Balance]
		,dbo.ufn_CalculateFutureValue([a].[Balance], @intRate, 5) [Balance in 5 years]
	FROM [Accounts][a]
	JOIN [AccountHolders][ah] ON [ah].[Id] = [a].[AccountHolderId]
	WHERE [a].[Id] = @accountId
END