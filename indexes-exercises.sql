
# ************ GROUP BY EXERCISES *****************
# ************ 1 **********
# Create File use employees database
USE employees;

# ************ 2 **********
DESCRIBE departments;

DESCRIBE dept_emp;

DESCRIBE dept_manager;

DESCRIBE employees;

DESCRIBE salaries;

DESCRIBE titles;

# ************ 3 **********
USE codeup_test_db;

# ************ 4 **********
ALTER TABLE  albums
    ADD UNIQUE (artist, name);
INSERT INTO albums(artist, name, release_date, sales, genre) VALUES ('testalbum','testname',1980,56.5,'rock');

