# Pewlett-Hackard-Analysis

## Overview of the analysis: Explain the purpose of this analysis.
In consideration of upcoming baby-boomer retirements, Pewlett-Hackard is evaluating this circumstance by:
- Offering retirement packages for those employees who meet certain criteria.
- Determining which roles need to be filled from the large number of vacancies created by these retirements.

The goal of this project is to assist Bobby, an HR Analyst in answering:
1. Who will be retiring in the next few years?
2. How many positions will Pewlett-Hackard need to fill?

Our analysis will generate a list of all employees who are eligible for the retirement package.  The analysis begins by examining 6, comma-delimited .csv files that Pewlett-Hackard maintains their records with:  
- departments.csv; a listing of 9 departments with their department number and department name.
- employees.csv; a listing of over 300,000 current and former employees
- dept_managers.csv; as listing of the historical record of managers by department
- dept_emp.csv; a listing of over 331,000 historical records of employee assignments by department
- salaries.csv; a 500,000 listing of historical records of employee salaries
- titles.csv; a 444,000 listing of historical employee titles

Pewlett-Hackard HR does not have any of these records stored in a database.

Our first steps with this project will be to create tables in a Postgres SQL database and then import data from these .csv files into the tables we create.  For this effort, we will start by creating an Entity Relationship Diagram (ERD).

Our ERD will be generated from open source software called Quick DBD.  Following is the ERD for our starting data:

	![Figure 1 - ERD](blob/main/EmployeeDB.png)


## Results: Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.


## Summary: Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."

How many roles will need to be filled as the "silver tsunami" begins to make an impact?
Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?