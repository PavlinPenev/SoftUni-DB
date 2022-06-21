SELECT
	CONCAT_WS('-', o.[Name], a.[Name])OwnersAnimals,
	o.PhoneNumber,
	ac.CageId
FROM Owners o
JOIN Animals a ON a.OwnerId = o.Id
JOIN AnimalTypes [at] ON a.AnimalTypeId = [at].Id
JOIN AnimalsCages ac ON a.Id = ac.AnimalId
WHERE [at].AnimalType LIKE '%mammal%'
ORDER BY o.[Name], a.[Name] DESC