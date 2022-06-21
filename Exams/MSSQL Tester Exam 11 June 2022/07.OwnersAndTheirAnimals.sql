SELECT TOP(5)
	o.[Name] [Owner],
	COUNT(a.Id) CountOfAnimals
FROM Owners o 
JOIN Animals a ON o.Id = a.OwnerId
GROUP BY o.[Name]
ORDER BY CountOfAnimals DESC, o.[Name]