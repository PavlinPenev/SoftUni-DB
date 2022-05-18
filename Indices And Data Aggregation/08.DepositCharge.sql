SELECT [DepositGroup], [MagicWandCreator], MIN([DepositCharge]) [MinDepositCharge]
FROM [WizzardDeposits]
GROUP BY [DepositGroup], [MagicWandCreator]
ORDER BY [MagicWandCreator], [DepositGroup]