use coffee_sale_analysis

-- Show Table
SELECT
	* 
FROM
	coffee_sale

--  Total Sales per month
SELECT
	MONTH(date) as Monthly_date,
	ROUND(SUM(money),2) as Total_Sales
FROM
	coffee_sale
Group BY
	MONTH(date)
ORDER BY
	MONTH(date)

--  Total Sales per month for card
SELECT
	MONTH(date) as Monthly_date,
	ROUND(SUM(money),2) as Total_Sales
FROM
	coffee_sale
WHERE
	cash_type = 'card'
Group BY
	MONTH(date)
ORDER BY
	MONTH(date)

--  Total Sales per month for cash
SELECT
	MONTH(date) as Monthly_date,
	ROUND(SUM(money),2) as Total_Sales
FROM
	coffee_sale
WHERE
	cash_type = 'cash'
Group BY
	MONTH(date)
ORDER BY
	MONTH(date)