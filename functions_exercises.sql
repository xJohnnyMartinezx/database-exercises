USE employees;

# ************ FUNCTIONS EXERCISES *****************
# ************ 1 **********
# Create File

# ************ 2 **********
SELECT CONCAT(first_name, ' ', last_name) AS 'Full Name'
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E';

# ************ 3 **********
SELECT *
FROM employees
WHERE MONTH(birth_date) = 12
AND DAY(birth_date) = 25
ORDER BY first_name;

# ************ 4 **********
SELECT *
FROM employees
WHERE MONTH(birth_date) = 12
  AND DAY(birth_date) = 25
  AND YEAR(hire_date) BETWEEN 1990 ANd 1999
ORDER BY hire_date;

# ************ 5 **********
SELECT *
FROM employees
WHERE MONTH(birth_date) = 12
  AND DAY(birth_date) = 25
  AND YEAR(hire_date) BETWEEN 1990 ANd 1999
ORDER BY birth_date, hire_date DESC;

# ************ 6 **********
SELECT DATEDIFF(curdate(), hire_date) AS 'Current days of Employment'
FROM employees
WHERE MONTH(birth_date) = 12
  AND DAY(birth_date) = 25
  AND YEAR(hire_date) BETWEEN 1990 ANd 1999
ORDER BY hire_date;
