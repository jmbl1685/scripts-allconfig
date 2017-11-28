CREATE TRIGGER dbo.Reservation_INSERT
	ON dbo.Reservation
AFTER INSERT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @ClientID int;
	SELECT @ClientID = INSERTED.ReservationClientID
	FROM INSERTED

	INSERT INTO dbo.Log
	VALUES( 'Automatic Insert Log', 'Client ' + CAST(@ClientID as varchar) + ' was updated')
END