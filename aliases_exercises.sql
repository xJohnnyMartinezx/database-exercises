

# ************ GROUP BY EXERCISES *****************
# ************ 1 **********
# Create File

# ************ 2 **********
USE employees;

# ************ 3, 4, 5 **********

SELECT CONCAT(emp_no, ' - ', last_name, ', ', first_name) AS Full_Name, birth_date AS DOB
FROM employees
# GROUP BY emp_no, last_name, first_name, birth_date
ORDER BY emp_no, last_name, first_name, birth_date
LIMIT 10;
