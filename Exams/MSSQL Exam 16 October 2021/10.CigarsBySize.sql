SELECT
	cl.LastName,
	AVG(s.[Length])CigarLength,
	CEILING(AVG(s.RingRange))CigarRingRange
FROM Clients cl
JOIN ClientsCigars cc ON cl.Id = cc.ClientId
JOIN Cigars c ON c.Id = cc.CigarId
JOIN Sizes s ON c.SizeId = s.Id
WHERE cl.Id IN (SELECT cc.ClientId FROM ClientsCigars)
GROUP BY cl.LastName
ORDER BY CigarLength DESC