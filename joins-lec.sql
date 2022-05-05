CREATE DATABASE IF NOT EXISTS joins_lec_db;

USE joins_lec_db;

CREATE TABLE IF NOT EXISTS teams
(
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    city VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL
);


CREATE TABLE IF NOT EXISTS players
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    jersey_number INT UNSIGNED NOT NULL,
    is_active TINYINT UNSIGNED NOT NULL,
    team_id INT UNSIGNED,
    FOREIGN KEY (team_id) REFERENCES teams(id)
);

CREATE TABLE IF NOT EXISTS positions
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    position CHAR(2)
);

CREATE TABLE IF NOT EXISTS player_position
(
    player_id INT UNSIGNED NOT NULL,
    position_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (player_id) REFERENCES players(id),
    FOREIGN KEY (position_id) REFERENCES positions(id)
);


INSERT INTO teams (city, name)
VALUES ('Arlington', 'Texas Rangers'),
       ('Houston', 'Astros'),
       ('Los Angeles', 'Dodgers'),
       ('Washington', 'Nationals'),
       ('San Francisco', 'Giants');

INSERT INTO players (first_name, last_name, jersey_number, is_active, team_id)
VALUES ('Corey', 'Seager', 5, 1, 1),
       ('Luis', 'Garcia', 77, 1,2),
       ('Kenny', 'Powers', 99, 0, NULL);

INSERT INTO positions (position)
VALUES ('SS'),
       ('2B'),
       ('P'),
       ('C'),
       ('RF'),
       ('CF'),
       ('LF');

INSERT INTO player_position
VALUES (1,1),
       (2,3),
       (3,3);


#  what do we want

SELECT CONCAT(p.first_name, p.last_name) AS Player,
       t.name AS Team
# from where
FROM players AS p
# make connection between tables
JOIN teams AS t ON p.team_id = t.id;

#  what do we want

SELECT CONCAT(p.first_name, p.last_name) AS Player,
       t.name AS Team
# from where
FROM players AS p
# make connection between tables
         LEFT JOIN teams AS t ON p.team_id = t.id;

SELECT CONCAT(p.first_name, p.last_name) AS Player,
       t.name AS Team
# from where
FROM players AS p
# make connection between tables
         RIGHT JOIN teams AS t ON p.team_id = t.id;

# SELECT CONCAT(p.first_name, ' ', p.last_name) AS Player,
#        pos.position as Position
# FROM players AS p
#     JOIN player_position AS pp on p.id = pp.player_id
# JOIN  player_position AS pos on p.id;

