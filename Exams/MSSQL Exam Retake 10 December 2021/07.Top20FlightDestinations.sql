SELECT TOP(20) 
	fd.Id DestinationId,
	[Start],
	p.FullName,
	a.AirportName,
	fd.TicketPrice
FROM FlightDestinations fd
JOIN Passengers p ON fd.PassengerId = p.Id
JOIN Airports a ON fd.AirportId = a.Id
WHERE DAY([Start]) % 2 = 0
ORDER BY fd.TicketPrice DESC, a.AirportName