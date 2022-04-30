SELECT TOP(5) c.[CountryName], r.[RiverName]
FROM [Countries] c
LEFT JOIN [CountriesRivers] cr ON cr.[CountryCode] = c.[CountryCode]
LEFT JOIN [Rivers] r ON cr.[RiverId] = r.[Id]
LEFT JOIN [Continents] cn ON c.[ContinentCode] = cn.[ContinentCode]
WHERE cn.[ContinentName] = 'Africa'
ORDER BY c.[CountryName]