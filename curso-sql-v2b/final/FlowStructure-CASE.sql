DECLARE @Counter INT = 3;

SELECT 
	CASE @Counter
		WHEN 1 THEN 'One'
		WHEN 2 THEN 'Two'
		WHEN 3 THEN 'Three'
	END AS Counter