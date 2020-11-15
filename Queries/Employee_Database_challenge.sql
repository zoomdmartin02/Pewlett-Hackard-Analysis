-- Challenge Deliverable 1
-- create a Retirement Titles table that holds all the titles of current employees who were born between January 1, 1952 and December 31, 1955.
SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
INTO retirement_titles
FROM employees AS e
LEFT JOIN titles AS t
	ON (e.emp_no = t.emp_no)
WHERE  birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY e.emp_no;