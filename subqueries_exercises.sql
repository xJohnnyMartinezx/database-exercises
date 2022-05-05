USE employees;
# ************ SUBQUERIES EXERCISES *****************

# ************ 1 **********
SELECT *
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
    );

# ************ 2 **********
SELECT t.title
FROM titles AS t
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
    );

# ************ 3 **********
SELECT e.first_name, e.last_name
FROM employees AS e
WHERE e.gender = 'F'
AND e.emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date > CURDATE()
    );

