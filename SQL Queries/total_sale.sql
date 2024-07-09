use coffee_sale_analysis

-- Show Table
SELECT
	* 
FROM
	coffee_sale

-- Total Sales
SELECT
	ROUND(SUM(money),2) as Total_Sales
FROM
	coffee_sale

-- There are total of 30,592.94 

SELECT
	coffee_name,
	ROUND(SUM(money),2) as Total_Payment
FROM
	coffee_sale
GROUP BY
	coffee_name
ORDER BY
	Total_Payment

SELECT
	* 
FROM
	coffee_sale
WHERE
	coffee_name = 'Americano with Milk'
ORDER BY
	money

