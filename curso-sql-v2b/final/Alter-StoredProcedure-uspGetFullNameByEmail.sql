ALTER PROC dbo.uspGetFullNameByEmail @Email nvarchar(50) = ''
AS
SELECT CONCAT( CONCAT( ClientName , ' '), ClientLastName) as ClientFullName, ClientEmail
FROM Client
WHERE ClientEmail LIKE '%' + @Email + '%'
GO