SELECT [DepositGroup], MAX([MagicWandSize]) [LongestMagicWand]
FROM [WizzardDeposits]
GROUP BY [DepositGroup]