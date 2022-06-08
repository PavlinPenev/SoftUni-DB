SELECT r.[Description], c.[Name] CategoryName
FROM Reports r
JOIN Categories c ON r.CategoryId = c.Id
WHERE r.CategoryId IS NOT NULL
ORDER BY r.[Description], CategoryName