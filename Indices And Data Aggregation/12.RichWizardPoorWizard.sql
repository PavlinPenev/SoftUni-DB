SELECT SUM([Difference]) [SumDifference]
FROM (SELECT [FirstName][Host Wizard], 
			 [DepositAmount][Host Wizard Deposit],
			 LEAD([FirstName]) OVER(ORDER BY [Id])[Guest Wizard],
			 LEAD([DepositAmount]) OVER(ORDER BY [Id])[Guest Wizard Deposit],
			 ([DepositAmount] - LEAD([DepositAmount]) OVER(ORDER BY [Id]))[Difference]
	  FROM [WizzardDeposits])[SumTable]


