USE employees;

# ************ GROUP BY EXERCISES *****************
# ************ 1 **********
# Create File

# ************ 2 **********
SELECT DISTINCT title
FROM titles;

# ************ 3 **********
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E'
GROUP BY last_name;

# ************ 4 **********
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E'
GROUP BY first_name, last_name;


# ************ 5 **********
SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

# ************ 6 **********
SELECT last_name, COUNT(*)
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY COUNT(*);

# ************ 7 **********

SELECT gender, COUNT(*)
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender
ORDER BY COUNT(*);

