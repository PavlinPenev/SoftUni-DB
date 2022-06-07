DELETE FROM Clients
WHERE AddressId IN (SELECT Id FROM Addresses WHERE LEFT(Country, 1) LIKE 'C')

DELETE FROM Addresses
WHERE LEFT(Country, 1) LIKE 'C'