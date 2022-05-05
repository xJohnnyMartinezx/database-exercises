USE joins_lec_db;

# GET ALL PLAYER FROM A SPECIFIC TEAM
SELECT CONCAT(p.first_name, ' ', p.last_name)
FROM players AS p
WHERE team_id IN (
    SELECT id
    FROM teams
    WHERE name LIKE '%Rangers%'
    );

SELECT CONCAT(p.first_name, ' ', p.last_name)
FROM players AS p
WHERE id IN (
    SELECT player_id
    FROM player_position
    WHERE position_id IN (
        SELECT id
        FROM positions
        WHERE position = 'P'
        )
    );

INSERT INTO players(first_name, last_name, jersey_number, is_active, team_id)
VALUES ('Cody', 'Duck', 13, 1, (SELECT id FROM teams WHERE name = 'Dodgers'));

UPDATE players
SET team_id = (SELECT id FROM teams WHERE name = 'Nationals')
WHERE first_name  = 'Cody';