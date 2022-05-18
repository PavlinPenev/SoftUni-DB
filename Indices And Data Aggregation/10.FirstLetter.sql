SELECT LEFT([FirstName], 1) [FirstLetter]
FROM [WizzardDeposits]
WHERE [DepositGroup] LIKE '%Troll Chest%'
GROUP BY LEFT([FirstName], 1)
ORDER BY [FirstLetter]
