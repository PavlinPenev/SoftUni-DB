SELECT [DepositGroup], SUM([DepositAmount]) [TotalSum]
FROM [WizzardDeposits]
WHERE [MagicWandCreator] LIKE '%Ollivander%'
GROUP BY [DepositGroup]