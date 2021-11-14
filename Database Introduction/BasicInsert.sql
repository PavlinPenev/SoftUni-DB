INSERT INTO SoftUni.dbo.Towns (Name) VALUES
('Sofia'),
('Plovdiv'),
('Varna'),
('Burgas')
INSERT INTO SoftUni.dbo.Departments (Name) VALUES
('Engineering'),
('Sales'),
('Marketing'),
('Software Development'),
('Quality Assurance')
INSERT INTO SoftUni.dbo.Employees (FirstName, LastName, JobTitle, DepartmentId, HireDate, Salary) VALUES
('Ivan', 'Ivanov', '.NET Developer', 4, '2013-02-01', 3500.00),
('Petar', 'Petrov', 'Senior Engineer', 1, '2004-03-02', 4000.00),
('Maria', 'Ivanova', 'Intern', 5, '2016-08-28', 525.25),
('Georgi', 'Ivanov', 'CEO', 2, '2007-12-09', 3000.00),
('Peter', 'Pan', 'Intern', 3, '2016-08-28', 599.88)

-- To check the result of this query execute the next one

SELECT SoftUni.dbo.Employees.Id, SoftUni.dbo.Employees.FirstName,
SoftUni.dbo.Employees.LastName, SoftUni.dbo.Employees.JobTitle,
SoftUni.dbo.Employees.HireDate, SoftUni.dbo.Employees.Salary,
SoftUni.dbo.Departments.Name
FROM (SoftUni.dbo.Employees
INNER JOIN SoftUni.dbo.Departments ON SoftUni.dbo.Employees.Id = SoftUni.dbo.Departments.Id)