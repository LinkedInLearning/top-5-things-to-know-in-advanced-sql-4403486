/*
Created By: Kendall Ruber
The following is an exmaple of a query using ROW_NUMBER, as discussed in video 03_02.
Task: Write a query using ROW_NUMBER to return each customer's most recent order.
*/

-- Preview data if necessary
--SELECT * FROM [Red30Tech].[dbo].[OnlineRetailSales$]

-- Demonstrate that there are many customers with multiple orders
SELECT CUSTNAME, COUNT(DISTINCT OrderNum) 
FROM  [Red30Tech].[dbo].[OnlineRetailSales$] 
GROUP BY CUSTNAME

-- Write a query using ROW_NUMBER to number each customer's orders based on the order date 
SELECT [OrderNum], [OrderDate], [CustName], [ProdName], [Quantity], 
ROW_NUMBER() OVER(PARTITION BY [CustName] ORDER BY OrderDate DESC) as ROW_NUM
FROM  [Red30Tech].[dbo].[OnlineRetailSales$] 

-- Take the query above and modify it to return only the most recent order (ROW_NUMBER = 1)
-- Write a query using ROW_NUMBER to number each customer's orders based on the order date 

-- You cannot filter on the column created by the windows function in the WHERE clause
SELECT [OrderNum], [OrderDate], [CustName], [ProdName], [Quantity], 
ROW_NUMBER() OVER(PARTITION BY [CustName] ORDER BY OrderDate DESC) as ROW_NUM
FROM  [Red30Tech].[dbo].[OnlineRetailSales$] 
WHERE ROW_NUM=1 --- this does NOT work!

-- Wrap the query in a CTE (or subquery!), then you will be able to filter where ROW_NUM = 1
-- Bonus info: In other SQL dialects like PostgresSQL, the QUALIFY keyword lets you
-- filter on a ROW_NUMBER column like you would in a WHERE clause. You would type QUALIFY ROW_NUM = 1

WITH ROW_NUMBERS as (
					SELECT [OrderNum], [OrderDate], [CustName], [ProdName], [Quantity],
					ROW_NUMBER() OVER(PARTITION BY [CustName] ORDER BY OrderDate DESC) as ROW_NUM
					FROM  [Red30Tech].[dbo].[OnlineRetailSales$] 
					)

SELECT * FROM ROW_NUMBERS WHERE ROW_NUM =1