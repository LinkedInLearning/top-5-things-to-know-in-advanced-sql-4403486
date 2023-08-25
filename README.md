# Top Five Things to Know in Advanced SQL
This is the repository for the LinkedIn Learning course Top Five Things to Know in Advanced SQL. The full course is available from [LinkedIn Learning][lil-course-url].

![Top Five Things to Know in Advanced SQL][lil-thumbnail-url] 

In this course, Kendall Ruber shows you how to build on your existing knowledge of basic SQL commands by introducing advanced SQL concepts and providing hands-on exercises for you to apply these skills to common business problems. By the end of this course, students should understand the different use cases and limitations for various advanced functions in SQL, as well as be able to appropriately apply these functions to solve business problems. Learn and practice how to construct  subqueries, CTEs (Common Table Expressions), and windows functions.

## Instructions
This repository has branches for each of the videos in the course. You can use the branch pop up menu in github to switch to a specific branch and take a look at the course at that stage, or you can add `/tree/BRANCH_NAME` to the URL to go to the branch you want to access.

## Branches
The branches are structured to correspond to the videos in the course. The naming convention is `CHAPTER#_MOVIE#`. As an example, the branch named `02_03` corresponds to the second chapter and the third video in that chapter. 
Some branches will have a beginning and an end state. These are marked with the letters `b` for "beginning" and `e` for "end". The `b` branch contains the code as it is at the beginning of the movie. The `e` branch contains the code as it is at the end of the movie. The `main` branch holds the final state of the code when in the course.

When switching from one exercise files branch to the next after making changes to the files, you may get a message like this:

    error: Your local changes to the following files would be overwritten by checkout:        [files]
    Please commit your changes or stash them before you switch branches.
    Aborting

To resolve this issue:
	
    Add changes to git using this command: git add .
	Commit changes using this command: git commit -m "some message"

## Installing
1. To complete the course, you must have the following installed:
	- SQL Server Management Studio (SSMS) [https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16]
	- Microsoft® SQL Server® 2017 Express [https://www.microsoft.com/en-us/download/details.aspx?id=55994]
	- Microsoft Excel or Google Sheets
	
2. Fork the repository to store your exercise files and notes. 


### Instructor

Kendall Ruber 
                            
Data scientist

                            

Check out my other courses on [LinkedIn Learning](https://www.linkedin.com/learning/instructors/kendall-ruber).

[lil-course-url]: https://www.linkedin.com/learning/top-five-things-to-know-in-advanced-sql?dApp=59033956&leis=LAA
[lil-thumbnail-url]: https://media.licdn.com/dms/image/D560DAQG_j9tunegTdQ/learning-public-crop_675_1200/0/1692730198805?e=2147483647&v=beta&t=ZOEqpGq7Xm3HRhgahK4V8C3l30Ha6YcgQx-SGrZdnks
