# ************ JOINS (JOIN EXAMPLE DATABASE) EXERCISES *****************
# ************ 1 **********
# Create File and run provided SQL
CREATE DATABASE IF NOT EXISTS join_test_db;

USE join_test_db;

CREATE TABLE roles
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE users
(
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name    VARCHAR(100) NOT NULL,
    email   VARCHAR(100) NOT NULL,
    role_id INT UNSIGNED DEFAULT NULL,
    UNIQUE(email),
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name)
VALUES ('admin');
INSERT INTO roles (name)
VALUES ('author');
INSERT INTO roles (name)
VALUES ('reviewer');
INSERT INTO roles (name)
VALUES ('commenter');

INSERT INTO users (name, email, role_id)
VALUES ('bob', 'bob@example.com', 1),
       ('joe', 'joe@example.com', 2),
       ('sally', 'sally@example.com', 3),
       ('adam', 'adam@example.com', 3),
       ('jane', 'jane@example.com', null),
       ('mike', 'mike@example.com', null),
# ************ 2 **********
       ('patrick', 'patrick@star.com', 2),
       ('sponge', 'bob@squarepants.com', 2),
       ('mrcrabs', 'mrcrabs@money.com', NULL),
       ('squidward', 'squidward@tenticles.com', 2);

# ************ 3 **********
SELECT users.name AS user_name, roles.name AS role_name
FROM users
JOIN join_test_db.roles on roles.id = users.role_id;

# ************ 4 **********
SELECT roles.name AS role_name, COUNT(*)
FROM users
JOIN join_test_db.roles on roles.id = users.role_id
GROUP BY role_name
ORDER BY COUNT(*);