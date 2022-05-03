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
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no DESC;

# ************ 4 **********
SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
ORDER BY emp_no DESC;

# ************ EXERCISE PART 2 *****************
# ************ 1 & 2 **********
SELECT first_name
FROM employees
WHERE first_name = 'Irena' AND gender = 'M'
   OR first_name = 'Vidya' AND gender = 'M'
   OR first_name = 'Maya'  AND gender = 'M';

# ************ 3 *************
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%'
   OR last_name LIKE '%E';

# ************ 4 *************
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E';

# ************ 5 *************
SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';
