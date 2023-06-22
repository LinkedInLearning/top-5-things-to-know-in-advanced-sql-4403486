/*
Created By: Kendall Ruber
The following is an example of a query using a multiple-row subquery, as discussed in videos 01_03 and 01_04.
Task: Two Trees Olive Oil wants to know the session name, start date, end date, and room 
that their employees will be delivering their presentations in. Write a query that uses a 
multiple-row subquery to extract this information.
*/

-- Preview data if necessary
-- SELECT * FROM [Red30Tech].[dbo].[SessionInfo$]
-- SELECT * FROM [Red30Tech].[dbo].[SpeakerInfo$]

SELECT [Speaker Name], [Session Name], [Start Date], [End Date], [Room Name]
FROM [Red30Tech].[dbo].[SessionInfo$]
WHERE [Speaker Name] in
				(SELECT [Name] FROM [Red30Tech].[dbo].[SpeakerInfo$]
				WHERE [Organization]='Two Trees Olive Oil')
-- OR -- 

SELECT [Speaker Name], [Session Name], [Start Date], [End Date], [Room Name]
FROM [Red30Tech].[dbo].[SessionInfo$] as ses
INNER JOIN (SELECT [Name] FROM [Red30Tech].[dbo].[SpeakerInfo$] 
				WHERE [Organization]='Two Trees Olive Oil') as speak
on ses.[Speaker Name] = speak.[Name]
