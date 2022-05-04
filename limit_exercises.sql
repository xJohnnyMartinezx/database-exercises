USE employees;


# ************ LIMIT EXERCISES *****************
# ************ 1 **********
# Create File

# ************ 2 **********
SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE 'Z%'
ORDER BY last_name DESC
LIMIT 10;

# ************ 3 **********
SELECT DISTINCT emp_no, salary
FROM salaries
WHERE salary <= 158220
ORDER BY salary DESC
LIMIT 5;


# ************ 4 **********
SELECT DISTINCT emp_no, salary
FROM salaries
WHERE salary <= 158220
ORDER BY salary DESC
LIMIT 5 OFFSET 45