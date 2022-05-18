SELECT [DepositGroup], SUM([DepositAmount]) [TotalSum]
FROM [WizzardDeposits]
GROUP BY [DepositGroup]