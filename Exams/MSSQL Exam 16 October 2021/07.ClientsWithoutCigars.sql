SELECT Id, CONCAT(FirstName, ' ', LastName)ClientName, Email FROM Clients
WHERE Id NOT IN (SELECT ClientId FROM ClientsCigars)
ORDER BY ClientName