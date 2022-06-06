CREATE PROC usp_SearchByAirportName(@airportName NVARCHAR(70))
AS
BEGIN
	SELECT 
		a.AirportName,
		p.FullName,
		(CASE 
			WHEN fd.TicketPrice <= 400 THEN 'Low'
			WHEN fd.TicketPrice <= 1500 THEN 'Medium'
			ELSE 'High'
		END) LevelOfTicketPrice,
		ac.Manufacturer,
		ac.Condition,
		act.TypeName
	FROM Airports a
	JOIN FlightDestinations fd ON a.Id = fd.AirportId
	JOIN Passengers p ON p.Id = fd.PassengerId
	JOIN Aircraft ac ON fd.AircraftId = ac.Id
	JOIN AircraftTypes act ON ac.TypeId = act.Id
	WHERE a.AirportName LIKE @airportName
	ORDER BY ac.Manufacturer, p.FullName
END