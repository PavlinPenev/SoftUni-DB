CREATE OR ALTER PROC usp_GetHoldersWithBalanceHigherThan(@balanceTreshold MONEY)
AS
BEGIN
	SELECT [FirstName][First Name], [LastName][Last Name]
	FROM [AccountHolders][ah]
	LEFT JOIN [Accounts][a] ON [ah].[Id] = [a].[AccountHolderId]
	GROUP BY [ah].[Id], [ah].[FirstName], [ah].[LastName]
	HAVING SUM([a].[Balance]) > @balanceTreshold
	ORDER BY [First Name], [Last Name]
END