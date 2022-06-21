SELECT
	a.[Name],
	[at].AnimalType,
	FORMAT(a.BirthDate, 'dd.MM.yyyy') BirthDate
FROM Animals a
JOIN AnimalTypes [at] ON a.AnimalTypeId = [at].Id
ORDER BY a.[Name]