CREATE FUNCTION dbo.GetWeekDay
(@Date datetime)
	RETURNS int
AS
BEGIN
	RETURN DATEPART (weekday, @Date)
END;
GO