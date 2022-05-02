# -----------No.1--------------
USE codeup_test_db;

# -----------No.2--------------
SELECT name
           AS 'All albums in my table'
FROM albums;

SELECT name
           AS 'All albums released before 1980'
FROM albums
WHERE release_date < 1980;

SELECT name
           AS 'All albums by Michael Jackson'
FROM albums
WHERE artist = 'Michael Jackson';

# -----------No.3--------------

UPDATE albums
SET sales = sales * 10;
SELECT sales
FROM albums;

UPDATE albums
SET release_date = 1800
WHERE release_date < 1980;
SELECT release_date
FROM albums;

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT artist
FROM albums;









