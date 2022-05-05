USE codeup_test_db;

ALTER TABLE users
ADD UNIQUE (username);

DESCRIBE  users;

# ********** Duplicate user **********
# INSERT INTO users(username, email, first_name, last_name, middle_name)
# VALUES  ('bob', 'user@gmail.com', 'Roberts', 'Roberts', 'Robby')


CREATE TABLE IF NOT EXISTS posts
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    user_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id)

);

DESCRIBE posts;

INSERT INTO posts(id, title, content, user_id)
VALUES ('new post', 'Some contents', 2);