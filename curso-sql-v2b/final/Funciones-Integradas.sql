--SELECT * FROM Client;

--CONCAT

--SELECT CONCAT( CONCAT( ClientName, ' ' ), ClientLastName) as ClientFullName FROM Client;

--SELECT LOWER( ClientName ) FROM Client;

--SELECT * FROM Client WHERE LOWER( ClientName ) = 'steven';

--SELECT ClientID, RAND(ClientID) as random FROM Client;

--SELECT GETDATE();

--SELECT * FROM fn_my_permissions(NULL, 'SERVER');

SELECT DB_NAME();