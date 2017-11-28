CREATE FUNCTION dbo.GetClientReservations
(@ClientID int)
RETURNS @ClientReservation TABLE
(
	ClientID			INT			NOT NULL,
	ClientName			TEXT		NOT NULL,
	ReservationDateIn	DATETIME	NOT NULL,
	ReservationDateOut	DATETIME	NOT NULL
)
AS
BEGIN
	INSERT @ClientReservation
	SELECT a.ClientID, a.ClientName, b.ReservationDateIn, b.ReservationDateOut
	FROM Client a
		INNER JOIN Reservation b
			ON a.ClientID = b.ReservationClientID
	WHERE ClientID = @ClientID
	RETURN
END