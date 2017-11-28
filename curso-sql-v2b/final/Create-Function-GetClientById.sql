CREATE FUNCTION dbo.GetClientById
(@ClientID int)
	RETURNS table
AS
RETURN (
	SELECT * 
	FROM Client
	WHERE ClientID = @ClientID
)