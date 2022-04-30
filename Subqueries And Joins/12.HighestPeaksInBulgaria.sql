SELECT 
	c.[CountryCode],
	m.[MountainRange],
	p.[PeakName],
	p.[Elevation]
FROM [Countries] c
JOIN [MountainsCountries] mc ON c.[CountryCode] = mc.[CountryCode]
JOIN [Mountains] m ON mc.[MountainId] = m.[Id]
JOIN [Peaks] p ON m.[Id] = p.[MountainId]
WHERE p.[Elevation] > 2835 AND c.[CountryName] = 'Bulgaria'
ORDER BY p.[Elevation] DESC
			