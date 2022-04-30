SELECT c.[CountryCode], COUNT(m.[MountainRange]) AS [MountainRanges]
FROM [Countries] c
JOIN [MountainsCountries] mc ON c.[CountryCode] = mc.[CountryCode]
JOIN [Mountains] m ON mc.[MountainId] = m.[Id]
WHERE c.[CountryName] IN ('United States', 'Russia', 'Bulgaria')
GROUP BY c.[CountryCode]