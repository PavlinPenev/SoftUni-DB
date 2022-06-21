DELETE FROM Volunteers 
WHERE DepartmentId IN (SELECT Id FROM VolunteersDepartments 
						WHERE DepartmentName LIKE '%Education program Assistant%')

DELETE FROM VolunteersDepartments
WHERE DepartmentName LIKE '%Education program Assistant%'