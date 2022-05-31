CREATE TRIGGER tr_createNewEmailWhenLogIsInserted
ON [Logs] FOR INSERT
AS
BEGIN
	INSERT INTO [NotificationEmails]([Recipient], [Subject], [Body])
		SELECT 
			[i].[AccountId]
			,CONCAT('Balance change for account: ', [i].[AccountId])[Subject]
			,CONCAT(
				'On '
				,CAST( GETDATE() AS Date)
				,' your balance was changed from '
				,[i].[OldSum]
				,' to '
				,[i].[NewSum]
				,'.' )[Body]
		FROM [inserted][i]
END