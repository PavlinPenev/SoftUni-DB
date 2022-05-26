CREATE FUNCTION ufn_isWordComprised(@setOfLetters NVARCHAR(MAX), @word NVARCHAR(MAX))
RETURNS BIT
AS
BEGIN
	DECLARE @currentIndex INT = 1
		WHILE(@currentIndex <= LEN(@word))
		BEGIN
			IF(CHARINDEX(SUBSTRING(@word, @currentIndex, 1), @setOfLetters) = 0)
				RETURN 0
			ELSE 
				SET @currentIndex += 1
		END
	RETURN 1
END