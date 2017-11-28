DECLARE @Simple INT = NULL
DECLARE @Simple2 INT = NULL
DECLARE @Simple3 INT = 1

IF ( @Simple = @Simple2 )
BEGIN
	PRINT 'The same value'
END

IF( @Simple IS NULL  )
BEGIN
	PRINT 'It is null'
END

IF( @Simple3 IS NOT NULL  )
BEGIN
	PRINT 'It is null'
END