/*
Created By: Kendall Ruber
The following is an example of a query using RANK() and DENSE_RANK() as discussed in video 05_02.
Task: Write a query using RANK() and DENSE_RANK() that ranks employees in alphabetical order by their last name.
*/

SELECT * ,
RANK() OVER (ORDER BY [Last Name]) as RANK_,
DENSE_RANK() OVER (ORDER BY [Last Name]) as DENSE_RANK_
FROM [Red30Tech].[dbo].[EmployeeDirectory$]