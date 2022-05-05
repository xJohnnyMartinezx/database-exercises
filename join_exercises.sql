USE employees;

# ************ JOINS (EMPLOYEES DATABASE) EXERCISES *****************
# ************ 1 **********
# Create File and run provided SQL

# ************ 2 **********
SELECT d.dept_name AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
JOIN dept_manager dm ON e.emp_no = dm.emp_no
JOIN departments AS d ON dm.dept_no = d.dept_no
WHERE dm.to_date > CURDATE();

# ************ 2A **********
SELECT d.dept_name AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
         JOIN dept_manager dm ON e.emp_no = dm.emp_no
         JOIN departments AS d ON dm.dept_no = d.dept_no
WHERE dm.to_date > CURDATE() AND gender = 'F';

# ************ 2B **********

SELECT title AS 'Job Title', COUNT(title) AS 'Total'
FROM employees AS e
         JOIN titles t on e.emp_no = t.emp_no
         JOIN current_dept_emp cde on e.emp_no = cde.emp_no
WHERE t.to_date > CURDATE()
  AND dept_no = 'd009'
GROUP BY title;

# ************ 2C **********

SELECT d.dept_name AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', s.salary AS 'Salary'
FROM employees AS e
         JOIN dept_manager dm ON e.emp_no = dm.emp_no
         JOIN departments AS d ON dm.dept_no = d.dept_no
         JOIN salaries s on e.emp_no = s.emp_no
WHERE dm.to_date > CURDATE() AND s.to_date > CURDATE();

