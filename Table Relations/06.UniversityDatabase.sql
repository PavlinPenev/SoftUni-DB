CREATE TABLE [Majors]
(
	[MajorID] INT IDENTITY PRIMARY KEY,
	[Name] NVARCHAR(20)
)
CREATE TABLE [Students]
(
	[StudentID] INT IDENTITY PRIMARY KEY,
	[StudentNumber] NVARCHAR(20) UNIQUE,
	[StudentName] NVARCHAR(20),
	[MajorID] INT REFERENCES [Majors]([MajorID])
)
CREATE TABLE [Payments]
(
	[PaymentID] INT IDENTITY PRIMARY KEY,
	[PaymentDate] DATE,
	[PaymentAmount] DECIMAL(8,2),
	[StudentID] INT REFERENCES [Students]([StudentID])
)
CREATE TABLE [Subjects]
(
	[SubjectID] INT IDENTITY PRIMARY KEY,
	[SubjectName] NVARCHAR(20)
)
CREATE TABLE [Agenda]
(
	[StudentID] INT REFERENCES [Students]([StudentID]),
	[SubjectID] INT REFERENCES [Subjects]([SubjectID])
	PRIMARY KEY([StudentID], [SubjectID])
)