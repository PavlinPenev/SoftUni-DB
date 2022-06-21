UPDATE Animals
SET OwnerId = (SELECT Id FROM Owners WHERE [Name] LIKE 'Kaloqn Stoqnov')
WHERE OwnerId IS NULL