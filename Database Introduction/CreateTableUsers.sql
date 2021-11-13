CREATE TABLE Users
(
	Id BIGINT PRIMARY KEY,
	Username VARCHAR(30) NOT NULL,
	Password VARCHAR(26) NOT NULL,
	ProfilePicture VARBINARY(MAX),
	LastLoginTime TIME,
	IsDeleted BIT
)
INSERT INTO Users VALUES
(1, 'ge6a', '6bez10', NULL, NULL, NULL),
(2, 'petisoleti', 'itqpulnokuku', NULL, NULL, NULL),
(3, 'PeshY', 'napOshalka', NULL, NULL, NULL),
(4, 'Mityo', 'ailqka', NULL, NULL, NULL),
(5, 'Pesho', 'Gosho', NULL, NULL, NULL)