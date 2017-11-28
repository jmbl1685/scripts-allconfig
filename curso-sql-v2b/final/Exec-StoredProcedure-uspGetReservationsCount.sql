--DECLARE @ReservationsCount int
--EXEC dbo.uspGetReservationsCount @ClientID = 3, @ReservationsCount = @ReservationsCount OUTPUT
--SELECT @ReservationsCount

DECLARE @ReservationsCount int
EXEC dbo.uspGetReservationsCount 3, @ReservationsCount = @ReservationsCount OUTPUT
SELECT @ReservationsCount