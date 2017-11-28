SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE PrintClients_Cursor
AS
BEGIN
      SET NOCOUNT ON;

	  DECLARE @ClientID INT
				,@ClientName VARCHAR(100)
				,@ClientLastName VARCHAR(100)

		DECLARE @Counter INT
		SET @Counter=1

		DECLARE PrintClients CURSOR READ_ONLY
		FOR
		SELECT ClientID, ClientName, ClientLastName
		FROM Client

		OPEN PrintClients

		FETCH NEXT FROM PrintClients INTO
		@ClientID, @CLientName, @ClientLastName

		WHILE @@FETCH_STATUS = 0
		BEGIN
			IF @Counter = 1
			BEGIN
				PRINT 'ClientID' + CHAR(9) + 'NAME' + CHAR(9) + 'Last Name'
				PRINT '-----------------------------------------------'
			END
			
			PRINT CAST( @ClientID as VARCHAR(10)  ) +  CHAR(9) +  CHAR(9) + CHAR(9) + CHAR(9) +@ClientName +  CHAR(9) + @ClientLastName
			SET @Counter = @Counter + 1

			FETCH NEXT FROM PrintClients INTO 
			@ClientID, @ClientName, @ClientLastName

		END
		CLOSE PrintClients
		DEALLOCATE PrintClients
END
GO