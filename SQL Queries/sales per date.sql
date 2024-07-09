use coffee_sale_analysis

-- Show Table
SELECT
	* 
FROM
	coffee_sale

SELECT 
	date, 
	ROUND(SUM(money),2) AS DailySales
FROM
	coffee_sale
GROUP BY 
	date
ORDER BY 
	date;

SELECT 
	MONTH(date) AS MonthDate, 
	ROUND(SUM(money),2) AS DailySales
FROM
	coffee_sale
GROUP BY 
	MONTH(date)
ORDER BY 
	MonthDate

SELECT 
	datetime AS HourlyTime, 
	ROUND(SUM(money),2) AS DailySales
FROM
	coffee_sale
GROUP BY 
	datetime
ORDER BY 
	HourlyTime