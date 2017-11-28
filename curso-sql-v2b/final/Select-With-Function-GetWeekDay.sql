--SELECT dbo.GetWeekDay( GETDATE() );

SELECT *, dbo.GetWeekDay( ReservationDateIn ) as dateIn, dbo.GetWeekDay( ReservationDateOut ) as dateOut
FROM Reservation;