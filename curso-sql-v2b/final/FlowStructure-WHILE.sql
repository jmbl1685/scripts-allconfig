DECLARE @Counter INT = 1

WHILE( @Counter < 5 )
BEGIN
	PRINT @Counter
	SET @Counter = @Counter + 1
END