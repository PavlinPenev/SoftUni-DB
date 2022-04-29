SELECT [TownID],[Name]
FROM [Towns] 
WHERE NOT [Name] LIKE '[RBD]%'
ORDER BY [Name]