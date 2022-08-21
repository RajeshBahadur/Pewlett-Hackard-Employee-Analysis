--Retrieve the emp_no, first_name, and last_name columns from the Employees table.

select 
employees.emp_no,
employees.first_name,
employees.last_name
from
employees;

--Retrieve the title, from_date, and to_date columns from the Titles table.
select
titles.title,
titles.from_date,
titles.to_date
from titles;
--Create a new table using the INTO clause.
select 
employees.emp_no,
employees.first_name,
employees.last_name,
titles.title,
titles.from_date,
titles.to_date
INTO retirement_title
FROM employees
LEFT JOIN titles
ON employees.emp_no = titles.emp_no;
select*from retirement_title

--Filter the data on the birth_date column to retrieve the employees who were born between 1952 and 1955. 
--Then, order by the employee number.
select 
retirement_title.emp_no,
retirement_title.first_name,
retirement_title.last_name,
retirement_title.title,
retirement_title.from_date,
retirement_title.to_date,
employees.birth_date
from retirement_title
inner join employees
on retirement_title.emp_no=employees.emp_no
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
order by emp_no






-- Use Dictinct with Orderby to remove duplicate rows

SELECT DISTINCT ON (retirement_title.emp_no) retirement_title.emp_no,
retirement_title.first_name,
retirement_title.last_name,
retirement_title.title
INTO unique_titles
FROM retirement_title
WHERE retirement_title.to_date='9999-01-01'
ORDER BY retirement_title.emp_no, retirement_title.to_date DESC;

select*from unique_titles
--retrieve the number of titles from the Unique Titles table.
select count(unique_titles.title)
from unique_titles;
--create a Retiring Titles table to hold the required information
SELECT COUNT(unique_titles.emp_no), unique_titles.title
INTO retiring_titles
FROM unique_titles 
GROUP BY title
ORDER BY COUNT(title) DESC;
select*from retiring_titles
select sum (retiring_titles.count)
from retiring_titles
--deliverable 2
--Retrieve the emp_no, first_name, last_name, and birth_date columns from the Employees table.
select
emp_no,
first_name,
last_name,
birth_date
from employees;
--Retrieve the from_date and to_date columns from the Department Employee table.
select
from_date,
to_date
from dept_emp;
--Retrieve the title column from the Titles table.
select
title
from titles;
-- join three tables and filter tables based on date of birth and get the unique value for employees eligible for mentorship
select distinct on (employees.emp_no) employees.emp_no,
employees.first_name,
employees.last_name,
employees.birth_date,
dept_emp.from_date,
dept_emp.to_date,
titles.title
INTO mentorship_eligibility
from employees
Inner join dept_emp
on employees.emp_no=dept_emp.emp_no
inner join titles
on dept_emp.emp_no=titles.emp_no
where dept_emp.to_date=('9999-01-01')
and (employees.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
order by emp_no;
select*from mentorship_eligibility










