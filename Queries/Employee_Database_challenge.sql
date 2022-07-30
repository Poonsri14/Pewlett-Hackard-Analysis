SELECT e.emp_no, 
e.first_name, 
e.last_name,
tt.title,
tt.from_date,
tt.to_date
INTO retirement_titles
FROM employees as e
LEFT JOIN titles AS tt
ON (e.emp_no = tt.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no ASC;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name, 
last_name,
title
INTO unique_titles
FROM retirement_titles
WHERE to_date = ('9999-01-01')
ORDER BY emp_no, first_name DESC;

-- retrieve the number of titles from the Unique Titles
SELECT COUNT (ut.title), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP By ut.title
ORDER BY count (ut.title)DESC;

-- create a Mentorship Eligibility table that holds the employees who are eligible to participate in a mentorship program.
SELECT DISTINCT ON (emp_no)e.emp_no, 
e.first_name, 
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
tt.title
INTO mentorship_eligibilty
FROM employees as e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
LEFT JOIN titles AS tt
ON (e.emp_no = tt.emp_no)
WHERE (de.to_date = ('9999-01-01'))
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no ASC;

-- Total of Mentorship Eligibility by title
SELECT COUNT (me.title), me.title
INTO mentorship_number
FROM mentorship_eligibilty as me
GROUP By me.title
ORDER BY count (me.title)DESC;

select * from mentorship_number;

-- Total of Retiring Employee by Title.
select SUM(count)
from retiring_titles;

