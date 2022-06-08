SELECT u.Username, c.[Name] CategoryName
FROM Users u
JOIN Reports r ON r.UserId = u.Id
JOIN Categories c ON r.CategoryId = c.Id
WHERE DATEPART(DAY, r.OpenDate) = DATEPART(DAY, u.Birthdate)
		AND DATEPART(MONTH, r.OpenDate) = DATEPART(MONTH, u.Birthdate)
ORDER BY u.Username, CategoryName