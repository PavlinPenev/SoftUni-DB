SELECT
	a.Id,
	a.Manufacturer,
	a.FlightHours,
	(SELECT COUNT(Id) Id FROM FlightDestinations fd 
				WHERE fd.AircraftId = a.Id) FlightDestinationsCount,
	ROUND((SELECT AVG(fd.TicketPrice) FROM FlightDestinations fd 
				WHERE fd.AircraftId = a.Id), 2) AvgPrice
FROM Aircraft a
WHERE (SELECT COUNT(Id) Id FROM FlightDestinations fd 
				WHERE fd.AircraftId = a.Id) >= 2
ORDER BY FlightDestinationsCount DESC, a.Id