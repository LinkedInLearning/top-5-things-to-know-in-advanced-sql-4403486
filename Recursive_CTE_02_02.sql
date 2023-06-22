/*
Created By: Kendall Ruber
The following is an exmaple of a Recursive CTE, as discussed in video 02_02.
Task: Write a query that uses a Recursive CTE to return the count of direct reports that Grant Nguyen has.
*/

-- Preview data if necessary 
-- select top (5) * FROM [Red30Tech].[dbo].[EmployeeDirectory$]

WITH DirectReports AS (
    SELECT [EmployeeID], [First Name], [Last Name], [Manager]
    FROM [Red30Tech].[dbo].[EmployeeDirectory$]
    WHERE [EmployeeID] = 42  -- Change this to the ID of the manager you want to query
    UNION ALL
    SELECT e.[EmployeeID], e.[First Name], e.[Last Name], e.[Manager]
    FROM [Red30Tech].[dbo].[EmployeeDirectory$] as e
    INNER JOIN DirectReports as d ON e.[Manager] = d.[EmployeeID]
)

SELECT COUNT(*) as Direct_Reports 
FROM DirectReports as d
WHERE d.[EmployeeID] != 42 --- exclude Grant himself from the final count
