/*
Created By: Kendall Ruber
Challenge Solution: Ranking Windows Functions
Task: Write a query using RANK() or DENSE_RANK() that pulls all registration information for the
first three people that registered for the Red30Tech Conference in each state.
*/

-- Preview data if necessary
-- SELECT * FROM [Red30Tech].[dbo].[ConventionAttendees$]

--- SOLUTION WITH DENSE RANK
-- Notice solution has 229 rows!
WITH RANKS AS (
	SELECT * ,
	DENSE_RANK() OVER (PARTITION BY [State] ORDER BY [Registration Date]) as DENSE_RANK_
	FROM [Red30Tech].[dbo].[ConventionAttendees$]
	)

SELECT * FROM RANKS WHERE DENSE_RANK_ in (1,2,3)

--- SOLUTION WITH RANK
-- Notice solution has 171 rows!
--WITH RANKS AS (
--	SELECT * ,
--	RANK() OVER (PARTITION BY [State] ORDER BY [Registration Date]) as RANK_
--	FROM [Red30Tech].[dbo].[ConventionAttendees$]
--	)

--SELECT * FROM RANKS WHERE RANK_ in (1,2,3)
