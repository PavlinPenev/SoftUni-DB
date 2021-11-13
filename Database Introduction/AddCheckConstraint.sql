ALTER TABLE Minions.dbo.Users
ADD CHECK(LEN(Password) >= 5)