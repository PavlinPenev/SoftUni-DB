CREATE OR ALTER FUNCTION ufn_CalculateFutureValue(@sum DECIMAL(18,4), @yearlyIntRate FLOAT, @years INT)
RETURNS DECIMAL(18,4)
AS
BEGIN
	RETURN @sum*(POWER(1 + @yearlyIntRate, @years))
END