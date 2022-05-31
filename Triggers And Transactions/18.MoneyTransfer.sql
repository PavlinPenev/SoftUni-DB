CREATE PROC usp_TransferMoney(@senderId INT, @receiverId INT, @amount DECIMAL(18,4))
AS
BEGIN TRANSACTION
	IF(@amount < 0)
		BEGIN
			ROLLBACK
		END
	DECLARE @senderCurrentBalance DECIMAL(18,4) 
		= (SELECT [Balance] FROM [Accounts] WHERE [Id] = @senderId)
	IF(@senderCurrentBalance < @amount)
		BEGIN 
			ROLLBACK
		END
	EXEC usp_WithdrawMoney @senderId, @amount
	EXEC usp_DepositMoney @receiverId, @amount
COMMIT