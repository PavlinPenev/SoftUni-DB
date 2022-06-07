UPDATE Cigars
SET PriceForSingleCigar *= 1.20
FROM Cigars c
JOIN Tastes t ON t.Id = c.TastId
WHERE t.TasteType LIKE '%Spicy%'

UPDATE Brands
SET BrandDescription = 'New description'
WHERE BrandDescription IS NULL