CREATE PROC usp_SearchByTaste(@taste VARCHAR(MAX))
AS
BEGIN
	SELECT 
		c.CigarName,
		CONCAT('$', c.PriceForSingleCigars)Price,
		t.TasteType,
		b.BrandName,
		CONCAT(s.[Length], ' cm')CigarLength,
		CONCAT(s.RingRange, ' cm') CigarRingRange
	FROM Cigars c
	JOIN Tastes t ON c.TastId = t.Id
	JOIN Sizes s ON c.SizeId = s.Id
	JOIN Brands b ON c.BrandId = b.Id
	WHERE t.TasteType LIKE @taste
	ORDER BY s.[Length], s.RingRange DESC
END