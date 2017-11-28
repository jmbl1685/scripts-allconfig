CREATE PROCEDURE dbo.uspGetClientByNames
@LastName nvarchar(50),
@Name nvarchar(50)
AS
SELECT ClientName, ClientLastName, ClientEmail, ClientCountryAddress
FROM Client
WHERE ClientName = @Name AND ClientLastName = @LastName
GO