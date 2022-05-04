USE employees;

# ************ ORDER BY EXERCISES *****************
# ************ 1 **********
# Create File

# ************ 2 **********
SELECT first_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;

# ************ 3 **********
SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;

# ************ 4 **********
SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name ASC, first_name;

# ************ 5 **********
SELECT last_name, emp_no
FROM employees
WHERE last_name LIKE '%e%'
ORDER BY emp_no;

# ************ 6 **********

SELECT last_name, emp_no
FROM employees
WHERE last_name LIKE '%e%'
ORDER BY emp_no DESC;

SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name DESC, first_name;
