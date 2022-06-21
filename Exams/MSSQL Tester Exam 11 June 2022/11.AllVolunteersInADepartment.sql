CREATE FUNCTION udf_GetVolunteersCount(@VolunteersDepartment VARCHAR(MAX))
RETURNS INT
AS
BEGIN
	RETURN (SELECT
				COUNT(v.Id)
			FROM Volunteers v
			JOIN VolunteersDepartments vd ON v.DepartmentId = vd.Id
			WHERE vd.DepartmentName LIKE @VolunteersDepartment)
END