CREATE TRIGGER dbo.Room_UPDATE
	ON dbo.Room
AFTER UPDATE
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @RoomID INT
	DECLARE @Action VARCHAR(100)

	SELECT @RoomID = INSERTED.RoomID
	FROM INSERTED

	IF UPDATE( RoomName )
	BEGIN
		SET @Action = 'Updated NAME'
	END

	IF UPDATE( RoomDescription )
	BEGIN
		SET @Action = 'Updated DESCRIPTION'
	END

	INSERT INTO dbo.Log
	VALUES ( 'Automatic Update Log', @Action + ' on Room' + CAST(@RoomID as varchar) )

END