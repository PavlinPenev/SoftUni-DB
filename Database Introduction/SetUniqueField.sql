ALTER TABLE Minions.dbo.Users
DROP CONSTRAINT PK_IdUsername
ALTER TABLE Minions.dbo.Users
ADD PRIMARY KEY(Id)
ALTER TABLE Minions.dbo.Users
ADD CHECK(LEN(Username) >= 3)