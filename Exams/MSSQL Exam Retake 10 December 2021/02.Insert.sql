INSERT INTO Passengers
SELECT 
	CONCAT(FirstName, ' ', LastName) FullName,
	CONCAT(FirstName, LastName, '@gmail.com')Email
FROM Pilots
WHERE Id BETWEEN 5 AND 15