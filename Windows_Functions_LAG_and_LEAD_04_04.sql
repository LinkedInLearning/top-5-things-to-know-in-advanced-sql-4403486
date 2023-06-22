/*
Created By: Kendall Ruber
Challenge Solution: LAG() and LEAD()
Task: Write a query using LAG() or LEAD() that returns the Quantity of Drones ordered on the previous 5
order dates from the OnlineRetailSales table.
*/

-- Preview data if necessary
-- SELECT * FROM [Red30Tech].[dbo].[OnlineRetailSales$]
-- WHERE ProdCategory = 'Drones'

-- LAG() Solution:
WITH ORDER_BY_DAYS AS (
					SELECT ORDERDATE, SUM(QUANTITY) AS QUANTITY_BY_DAY
					FROM [Red30Tech].[dbo].[OnlineRetailSales$]
					WHERE ProdCategory = 'Drones'
					GROUP BY ORDERDATE
)


SELECT ORDERDATE, QUANTITY_BY_DAY,
LAG([QUANTITY_BY_DAY],1) OVER (ORDER BY [ORDERDATE] ASC) AS LastDATEQuantity_1,
LAG([QUANTITY_BY_DAY],2) OVER (ORDER BY [ORDERDATE] ASC) AS LastDATEQuantity_2,
LAG([QUANTITY_BY_DAY],3) OVER (ORDER BY [ORDERDATE] ASC) AS LastDATEQuantity_3,
LAG([QUANTITY_BY_DAY],4) OVER (ORDER BY [ORDERDATE] ASC) AS LastDATEQuantity_4,
LAG([QUANTITY_BY_DAY],5) OVER (ORDER BY [ORDERDATE] ASC) AS LastDATEQuantity_5

FROM ORDER_BY_DAYS

---------------------------------------------------------------------------------------------------

-- LEAD() Solution:
WITH ORDERS_BY_DAYS AS(
					SELECT ORDERDATE, SUM(QUANTITY) AS QUANTITY_BY_DAY
					FROM [Red30Tech].[dbo].[OnlineRetailSales$]
					WHERE ProdCategory = 'Drones'
					GROUP BY ORDERDATE
					)

SELECT ORDERDATE, QUANTITY_BY_DAY,

LEAD([QUANTITY_BY_DAY],1) OVER (ORDER BY [ORDERDATE] DESC) AS LastDATEQuantity_1,
LEAD([QUANTITY_BY_DAY],2) OVER (ORDER BY [ORDERDATE] DESC) AS LastDATEQuantity_2,
LEAD([QUANTITY_BY_DAY],3) OVER (ORDER BY [ORDERDATE] DESC) AS LastDATEQuantity_3,
LEAD([QUANTITY_BY_DAY],4) OVER (ORDER BY [ORDERDATE] DESC) AS LastDATEQuantity_4,
LEAD([QUANTITY_BY_DAY],5) OVER (ORDER BY [ORDERDATE] DESC) AS LastDATEQuantity_5

FROM ORDERS_BY_DAYS
