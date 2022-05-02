USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums
(
    id           INT UNSIGNED   NOT NULL AUTO_INCREMENT PRIMARY KEY,
    artist       VARCHAR(255)   NOT NULL,
    name         VARCHAR(255)   NOT NULL,
    release_date INT UNSIGNED   NOT NULL,
    sales        FLOAT UNSIGNED NOT NULL,
    genre        VARCHAR(255)
);

SHOW TABLES;

DESCRIBE albums;
