USE codeup_test_db;

INSERT INTO users(username, EMAIL, FIRST_NAME, LAST_NAME, MIDDLE_NAME)
VALUES ('testuser', 'email@gmail.com', 'test-firstname', 'test-lastname', 'test-middlename'),
       ('testuser', 'email@gmail.com', 'test-firstname', 'test-lastname', NUll);