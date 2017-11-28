CREATE TRIGGER dbo.Reservation_DELETE
	ON dbo.Reservation
AFTER DELETE
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @RoomID INT

	SELECT @RoomID = DELETED.ReservationRoomID
	FROM DELETED

	INSERT INTO dbo.Log
	VALUES( 'Automatic Delete Log', 'Room ' + CAST(@RoomID as varchar) + ' is now available' )

END