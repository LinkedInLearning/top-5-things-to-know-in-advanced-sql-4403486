/*
Created By: Kendall Ruber
The following is an example of a query using a correlated subquery, as discussed in video 01_05.
Task: Write a query that outputs the first and last name, state, email address, 
and phone number of conference attendees who come from states that have no Online Retail Sales.
*/

-- Preview data if necessary
-- SELECT * FROM [Red30Tech].[dbo].[OnlineRetailSales$]
-- SELECT * FROM [Red30Tech].[dbo].[ConventionAttendees$]

SELECT [First Name], [Last Name], [State], [Email], [Phone Number] 
FROM [Red30Tech].[dbo].[ConventionAttendees$] as c
WHERE NOT EXISTS 
				(SELECT [CustState] FROM [Red30Tech].[dbo].[OnlineRetailSales$] as o
				 WHERE c.[State] = o.[CustState])

