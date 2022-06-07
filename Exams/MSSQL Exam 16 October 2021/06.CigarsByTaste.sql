SELECT	
	c.Id,
	c.CigarName, 
	c.PriceForSingleCigar,
	t.TasteType,
	t.TasteStrength
FROM Cigars c
JOIN Tastes t ON c.TastId = t.Id
WHERE t.TasteType LIKE 'Earthy' 
	OR t.TasteType LIKE 'Woody'
ORDER BY c.PriceForSingleCigar DESC