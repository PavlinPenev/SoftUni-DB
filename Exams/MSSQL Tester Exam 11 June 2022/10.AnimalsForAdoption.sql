SELECT
	a.[Name],
	DATEPART(YEAR, a.BirthDate)BirthYear,
	[at].AnimalType
FROM Animals a
JOIN AnimalTypes [at] ON a.AnimalTypeId = [at].Id
WHERE a.OwnerId IS NULL 
	AND DATEPART(YEAR, '01/01/2022') - DATEPART(YEAR, a.BirthDate) < 5
	AND [at].AnimalType NOT LIKE '%Birds%'
ORDER BY a.[Name]