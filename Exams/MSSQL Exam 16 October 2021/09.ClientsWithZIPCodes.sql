SELECT 
	CONCAT(cl.FirstName, ' ', cl.LastName)FullName,
	a.Country,
	a.ZIP,
	CONCAT('$', MAX(c.PriceForSingleCigar))CigarPrice
FROM Clients cl
JOIN Addresses a ON cl.AddressId = a.Id
JOIN ClientsCigars cc ON cl.Id = cc.ClientId
JOIN Cigars c ON cc.CigarId = c.Id
WHERE a.ZIP NOT LIKE '%[^0-9.]%'
GROUP BY FirstName, LastName, a.Id, a.Country, a.ZIP
ORDER BY FullName