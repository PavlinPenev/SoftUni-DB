SELECT TOP(5) c.[Name] CategoryName, COUNT(r.Id) ReportsNumber
FROM Categories c
LEFT JOIN Reports r ON r.CategoryId = c.Id
GROUP BY c.[Name]
ORDER BY ReportsNumber DESC, CategoryName