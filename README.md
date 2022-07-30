# Pewlett-Hackard-Analysis
SQL
## Overview of the analysis:
To analysis and determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program for Pewlett-Hackard company prepare for the upcoming "silver tsunami" as many current employees reach retirement age.


## Results:

### The Retirement Title
![retirement_titles](https://github.com/Poonsri14/Pewlett-Hackard-Analysis/blob/main/Resources/retirement_titles.png)

The table above is the Retirement Titles table that holds all the titles of employees who were born between January 1, 1952 and December 31, 1955. As you can see, some employees may have multiple titles in the database—for example, due to promotions— so, I used the DISTINCT ON statement to create a table that contains the most recent title of each employee. Then, use the COUNT() function to create a table that has the number of retirement-age employees by most recent job title. Finally, because I want to include only current employees in our analysis, thus excluding those employees that have already left the company by filtering on to_date to keep only those dates that are equal to '9999-01-01' as you can see on the Unique Title Table below.

### Unique Title
![unique_titles](https://github.com/Poonsri14/Pewlett-Hackard-Analysis/blob/main/Resources/unique_titles.png)

### The Number of Retiring Employees by Title
![retiring_titles](https://github.com/Poonsri14/Pewlett-Hackard-Analysis/blob/main/Resources/retiring_titles.png)

According to the table above, the high number of retiring employees are in Senior Engineer and Senior Staff. Then, Engineer, Staff, Technique Leader, Assistant Engineer, and Manager, respectively.


### The Employees Eligible for the Mentorship Program
![mentorship_eligibilty](https://github.com/Poonsri14/Pewlett-Hackard-Analysis/blob/main/Resources/mentorship_eligibilty.png)

The table above shows the current employees who were born between January 1, 1965 and December 31, 1965 and are eligible to participate in a mentorship program.



## Summary:

Base on the number of retiring employees by title, there are total of 72,458 roles will need to be filled as the "silver tsunami" begins to make an impact and there are only total of 1,549 employees who are eligible to participate in a mentorship program which will not be enough to mentor the next generation of Pewlett Hackard employees. 

As you can see the table below shows the total number of employees eligible for the Mentorship Program by title are a lot less then the numer of retiring employees by tiltles.

![mentorship_number](https://github.com/Poonsri14/Pewlett-Hackard-Analysis/blob/main/Resources/mentorship_number1.png)



