CREATE TABLE People
(
	Id INT PRIMARY KEY,
	Name NVARCHAR(200) NOT NULL,
	Picture VARBINARY(MAX),
	Height DECIMAL(3,2),
	Weight DECIMAL(5,2),
	Gender NCHAR(1) NOT NULL,
	Birthdate DATE NOT NULL,
	Biography NVARCHAR(MAX)
)
INSERT INTO People VALUES
(1, 'Gosho', NULL, 1.80, 75, 'm', '1989-01-17', NULL),
(2, 'Petya', NULL, 1.60, 50, 'f', '1992-12-06', NULL),
(3, 'Pesho', NULL, 1.65, 47, 'm', '1998-09-17', NULL),
(4, 'Mitio', NULL, 0.95, 176, 'm', '2000-05-21', NULL),
(5, 'Vanko', NULL, 1.70, 100, 'm', '1992-08-03', NULL)