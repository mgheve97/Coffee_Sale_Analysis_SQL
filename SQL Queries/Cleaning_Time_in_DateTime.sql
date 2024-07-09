use coffee_sale_analysis

-- Show Table
SELECT
	* 
FROM
	coffee_sale

ALTER TABLE coffee_sale
ADD time_only TIME;

UPDATE coffee_sale
SET time_only = CAST(datetime AS TIME)

ALTER TABLE coffee_sale
DROP COLUMN datetime