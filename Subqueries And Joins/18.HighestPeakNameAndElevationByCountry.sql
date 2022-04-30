SELECT TOP(5)
    [CountryName] AS [Country],
	ISNULL([Result].[PeakName], '(no highest peak)') AS [Highest Peak Name],
	ISNULL([Result].[Elevation], 0) AS [Highest Peak Elevation],
	ISNULL([Result].[MountainRange],'(no mountain)') AS [Mountain]
FROM(SELECT 
		c.[CountryName],
		p.[PeakName],
		p.[Elevation],
		m.[MountainRange],
		DENSE_RANK() OVER (PARTITION BY c.[CountryName] ORDER BY p.[Elevation] DESC) AS [Rank]
     FROM [Countries] c
            LEFT JOIN [MountainsCountries] mc ON c.[CountryCode] = mc.[CountryCode]
            LEFT JOIN [Mountains] m ON mc.[MountainId] = m.[Id]
            LEFT JOIN [Peaks] p  ON m.[Id] = p.[MountainId]
          ) AS [Result]
 WHERE [Rank] = 1
 ORDER BY [Country], [Highest Peak Name]