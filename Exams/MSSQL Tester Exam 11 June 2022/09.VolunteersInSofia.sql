SELECT
	v.[Name],
	v.PhoneNumber,
	SUBSTRING(v.[Address], CHARINDEX(',', v.[Address], 1) + 2, LEN(v.[Address]) - CHARINDEX(',', v.[Address], 1) + 1)[Address]
FROM Volunteers v
JOIN VolunteersDepartments vd ON v.DepartmentId = vd.Id
WHERE vd.DepartmentName LIKE '%Education program assistant%'
		AND v.[Address] LIKE '%Sofia%'
ORDER BY v.[Name]