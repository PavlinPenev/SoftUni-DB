CREATE TRIGGER tr_AddLogForEachSumChange
ON [dbo].[Accounts] FOR UPDATE
AS
BEGIN
	INSERT INTO [Logs]([AccountId], [OldSum], [NewSum])  
		SELECT [i].[Id], [d].[Balance] [OldSum], [i].[Balance] [NewSum]
		FROM [inserted] [i]
		JOIN [deleted] [d] ON [i].[Id] = [d].[Id]
END