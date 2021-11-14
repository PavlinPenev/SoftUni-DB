CREATE DATABASE Hotel
--Don't post the first line in judge
CREATE TABLE Employees
(
	Id INT PRIMARY KEY,
	FirstName NVARCHAR(MAX) NOT NULL,
	LastName NVARCHAR(MAX) NOT NULL,
	Title NVARCHAR(MAX),
	Notes NVARCHAR(MAX)
)
CREATE TABLE Customers
(
	AccountNumber INT PRIMARY KEY,
	FirstName NVARCHAR(MAX) NOT NULL,
	LastName NVARCHAR(MAX) NOT NULL,
	PhoneNumber NVARCHAR(MAX) NOT NULL,
	EmergencyName NVARCHAR(MAX),
	EmergencyNumber NVARCHAR(MAX),
	Notes NVARCHAR(MAX)
) 
CREATE TABLE RoomStatus
(
	RoomStatus NVARCHAR(450) PRIMARY KEY,
	Notes NVARCHAR(MAX)
)
CREATE TABLE RoomTypes
(
	RoomType NVARCHAR(450) PRIMARY KEY,
	Notes NVARCHAR(MAX)
)
CREATE TABLE BedTypes
(
	BedType NVARCHAR(450) PRIMARY KEY,
	Notes NVARCHAR(MAX)
)
CREATE TABLE Rooms
(
	RoomNumber INT PRIMARY KEY,
	RoomType NVARCHAR(450) FOREIGN KEY REFERENCES RoomTypes(RoomType),
	BedType NVARCHAR(450) FOREIGN KEY REFERENCES BedTypes(BedType),
	Rate DECIMAL(5,2),
	RoomStatus NVARCHAR(450) FOREIGN KEY REFERENCES RoomStatus(RoomStatus),
	Notes NVARCHAR(MAX)

)
CREATE TABLE Payments
(
	Id INT PRIMARY KEY,
	EmployeeId INT FOREIGN KEY REFERENCES Employees(Id),
	PaymentDate DATE,
	AccountNumber INT FOREIGN KEY REFERENCES Customers(AccountNumber),
	FirstDateOccupied DATE,
	LastDateOccupied DATE,
	TotalDays INT,
	AmountCharged DECIMAL(10,2),
	TaxRate DECIMAL(10,2),
	TaxAmount DECIMAL(10,2),
	PaymentTotal DECIMAL(10,2) NOT NULL,
	Notes NVARCHAR(MAX)
)
CREATE TABLE Occupancies
(
	Id INT PRIMARY KEY,
	EmployeeId INT FOREIGN KEY REFERENCES Employees(Id),
	DateOccupied DATE,
	AccountNumber INT FOREIGN KEY REFERENCES Customers(AccountNumber),
	RoomNumber INT FOREIGN KEY REFERENCES Rooms(RoomNumber),
	RateApplied DECIMAL(5,2),
	PhoneCharge DECIMAL(5,2),
	Notes NVARCHAR(MAX)
)
INSERT INTO Employees (Id, FirstName, LastName) VALUES
(1, 'Gosho', 'Goshov'),
(2, 'Pesho', 'Peshov'),
(3, 'Kucheto', 'Rodjur')
INSERT INTO Customers (AccountNumber, FirstName, LastName, PhoneNumber) VALUES
(1, 'Bratcheda', 'To', 053488766),
(2, 'Mitaka', 'Ailqka', 0875354685),
(3, 'Vanko', 'Kalpazanko', 0886543689)
INSERT INTO RoomStatus(RoomStatus) VALUES
('Free For Staying in'),
('Already Taken'),
('In Renovation')
INSERT INTO RoomTypes(RoomType) VALUES
('Single'),
('Double'),
('President')
INSERT INTO BedTypes(BedType) VALUES
('Single'),
('Double'),
('President')
INSERT INTO Rooms(RoomNumber, RoomType, BedType, RoomStatus) VALUES
(1, 'Single', 'Single', 'Free For Staying in'),
(2, 'Double', 'Double', 'Already Taken'),
(3, 'President', 'President', 'In Renovation')
INSERT INTO Payments (Id, EmployeeId, AccountNumber, PaymentTotal) VALUES
(1, 1, 1, 1375.25),
(2, 2, 2, 683.21),
(3, 3, 3, 2731.89)
INSERT INTO Occupancies (Id, EmployeeId, AccountNumber, RoomNumber) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3)