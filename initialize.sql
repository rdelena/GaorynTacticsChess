DROP TABLE IF EXISTS comments, rating, users;

CREATE TABLE users (
    id INT NOT NULL AUTO_INCREMENT,
    username VARCHAR(50),
    email VARCHAR (50),
    password VARCHAR(100),
    PRIMARY KEY (id)
);

CREATE TABLE comments (
    id INT NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    comment_text TEXT NOT NULL,
    comment_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    PRIMARY KEY (id),
    FOREIGN KEY (user_id)
    REFERENCES users (id)
        ON DELETE CASCADE
);

CREATE TABLE gamerating (
  id INT NOT NULL AUTO_INCREMENT,
  user_id INT NOT NULL,
  rate TINYINT UNSIGNED NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id)
  REFERENCES users (id)
    ON DELETE CASCADE
);

INSERT INTO users
 (username, email, password)
 VALUES
 ("Game4U", "gamemail@test.com", "PwnDrgKing55"),
 ("MasterSword32","Loz45@test.com", "LnkXZld4950!"),
 ("NinjaShedinja","bugsyhollow@test.com", "HercKabuto83");

INSERT INTO comments (user_id, comment_text, comment_time) 
VALUES 
(1,"Great Concept, but needs to be polished!", NOW()),
(2,"My new favorite game!!!",NOW()),
(3,"This game is really buggy, even for me!",NOW());

INSERT INTO gamerating
 (user_id, rate)
 VALUES
 (1, 3),
 (2, 5),
 (3, 3);