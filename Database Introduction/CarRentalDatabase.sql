CREATE DATABASE CarRental
-- Don't post the first line in judge
CREATE TABLE Categories
(
	Id INT PRIMARY KEY,
	CategoryName NVARCHAR(MAX) NOT NULL,
	DailyRate DECIMAL(4,2),
	WeeklyRate DECIMAL(4,2),
	MonthlyRate DECIMAL(4,2),
	WeekendRate DECIMAL(4,2)
)
CREATE TABLE Cars
(
	Id INT PRIMARY KEY,
	PlateNumber NVARCHAR(MAX) NOT NULL,
	Manufacturer NVARCHAR(MAX) NOT NULL,
	Model NVARCHAR(MAX) NOT NULL,
	CarYear INT NOT NULL,
	CategoryId INT FOREIGN KEY REFERENCES Categories(Id),
	Doors INT,
	Picture VARBINARY(MAX),
	Condition NVARCHAR(MAX),
	Available NVARCHAR(MAX)
)
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
	Id INT PRIMARY KEY,
	DriverLicenseNumber INT NOT NULL,
	FullName NVARCHAR(MAX) NOT NULL,
	Address NVARCHAR(MAX),
	City NVARCHAR(MAX),
	ZIPCode NVARCHAR(MAX),
	Notes NVARCHAR(MAX)
)
CREATE TABLE RentalOrders
(
	Id INT PRIMARY KEY,
	EmployeeId INT FOREIGN KEY REFERENCES Employees(Id),
	CustomerId INT FOREIGN KEY REFERENCES Customers(Id),
	CarId INT FOREIGN KEY REFERENCES Cars(Id),
	TankLevel INT,
	KilometrageStart INT,
	KilometrageEnd INT,
	TotalKilometrage INT,
	StartDate DATE,
	EndDate DATE,
	TotalDays INT,
	RateApplied DECIMAL(4,2),
	TaxRate DECIMAL(4,2),
	OrderStatus NVARCHAR(MAX) NOT NULL,
	Notes NVARCHAR(MAX)
)
INSERT INTO Categories VALUES
(1, 'Sedan', NULL, NULL, NULL, NULL),
(2, 'Hatchback', NULL, NULL, NULL, NULL),
(3, 'Offroad', NULL, NULL, NULL, NULL)
INSERT INTO Cars VALUES
(1, 'A5642MN', 'Volkswagen', 'Golf', 2020, 2, NULL, NULL, NULL, NULL),
(2, 'A4477AC', 'Audi', 'S8', 2018, 1, NULL, NULL, NULL, NULL),
(3, 'C0000EK', 'BMW', 'X5', 2015, 3, NULL, NULL, NULL, NULL)
INSERT INTO Employees VALUES
(1, 'Nasko', 'Dimitrov', NULL, NULL),
(2, 'Gosho', 'Petrov', NULL, NULL),
(3, 'Mityo', 'Ailqkov', NULL, NULL)
INSERT INTO Customers VALUES
(1, 674513, 'Pavlin Penev', NULL, NULL, NULL, NULL),
(2, 765238, 'Mityo Ailqkov', NULL, NULL, NULL, NULL),
(3, 321867, 'Viki STIGABE', NULL, NULL, NULL, NULL)
INSERT INTO RentalOrders VALUES
(1, 2, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sent', NULL),
(2, 3, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Received', NULL),
(3, 1, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sent', NULL)