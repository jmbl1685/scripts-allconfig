ALTER PROC dbo.uspGetReservationsCount @ClientID int, @ReservationsCount int OUTPUT
AS
SELECT @ReservationsCount = count(*)
FROM dbo.Reservation 
WHERE ReservationClientID = @ClientID