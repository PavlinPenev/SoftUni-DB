SELECT rc.[ContinentCode], rc.[CurrencyCode], rc.[CurrencyUsage]
FROM (
	SELECT c.[ContinentCode],
		   c.[CurrencyCode],
		   COUNT(c.[CurrencyCode]) AS [CurrencyUsage],
		   DENSE_RANK() OVER (PARTITION BY c.[ContinentCode] ORDER BY COUNT(c.[CurrencyCode]) DESC) AS [Rank] 
	FROM [Countries] c
	GROUP BY c.[ContinentCode], c.[CurrencyCode]) rc
WHERE rc.[Rank] = 1 AND rc.[CurrencyUsage] > 1