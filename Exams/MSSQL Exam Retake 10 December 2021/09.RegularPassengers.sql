SELECT
	p.FullName,
	(SELECT COUNT(a.Id) FROM Aircraft a 
				JOIN FlightDestinations fd ON fd.AircraftId = a.Id  
	WHERE p.Id = fd.PassengerId) CountOfAircraft,
	(SELECT SUM(fd.TicketPrice) FROM Aircraft a 
				JOIN FlightDestinations fd ON fd.AircraftId = a.Id  
	WHERE p.Id = fd.PassengerId) TotalPayed
FROM Passengers p
WHERE SUBSTRING(p.FullName, 2, 1) LIKE 'a' 
	AND (SELECT COUNT(a.Id) FROM Aircraft a 
				JOIN FlightDestinations fd ON fd.AircraftId = a.Id  
	WHERE p.Id = fd.PassengerId) > 1 
ORDER BY p.FullName