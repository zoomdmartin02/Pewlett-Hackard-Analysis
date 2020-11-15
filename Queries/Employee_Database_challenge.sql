-- Challenge Deliverable 1
-- create a Retirement Titles table that holds all the titles of current employees who were born between January 1, 1952 and December 31, 1955.
SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
INTO retirement_titles
FROM employees AS e
LEFT JOIN titles AS t
	ON (e.emp_no = t.emp_no)
WHERE  birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY e.emp_no;

SELECT * FROM retirement_titles;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, from_date DESC;

SELECT * FROM unique_titles;

-- Count titles from unique_titles table
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;

SELECT * FROM retiring_titles;
-- CREATE Mentorship Eligibility Table
SELECT DISTINCT ON(e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, t.title
--INTO mentorship_eligibility
FROM employees AS e
LEFT JOIN dept_emp AS de
	ON (e.emp_no = de.emp_no)
INNER JOIN titles AS t
	ON (e.emp_no = t.emp_no)
WHERE de.to_date = ('9999-01-01') AND e.birth_date BETWEEN '1965-01-01' AND '1965-12-31'
ORDER BY e.emp_no, t.from_date DESC;


SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
---INTO unique_titles
FROM mentorship_eligibility
ORDER BY emp_no, from_date DESC;

-- creating table 
SELECT COUNT(title), title
--INTO retiring_titles
FROM mentorship_eligibility
GROUP BY title
ORDER BY COUNT(title) DESC;


-- Expanding mentors to include 1964
SELECT * FROM retiring_titles;
-- CREATE Mentorship Eligibility Table
SELECT DISTINCT ON(e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, t.title
INTO expanded_mentorship_eligibility
FROM employees AS e
LEFT JOIN dept_emp AS de
	ON (e.emp_no = de.emp_no)
INNER JOIN titles AS t
	ON (e.emp_no = t.emp_no)
WHERE de.to_date = ('9999-01-01') AND e.birth_date BETWEEN '1964-01-01' AND '1965-12-31'
ORDER BY e.emp_no, t.from_date DESC;

-- count of mentors by dept after expansion of program to include 1964
SELECT COUNT(title), title
--INTO expanded_titles_mentionship_eligible
FROM expanded_mentorship_eligibility
GROUP BY title
ORDER BY COUNT(title) DESC;