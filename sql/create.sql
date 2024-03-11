DROP SCHEMA IF EXISTS eos_week2;
CREATE SCHEMA IF NOT EXISTS eos_week2 DEFAULT CHARACTER SET utf8;
USE eos_week2;

-- --------------------------------

DROP TABLE IF EXISTS User;

CREATE TABLE IF NOT EXISTS User(
    userId VARCHAR(60),
    username VARCHAR(20),
    profileImg VARCHAR(200),
    created DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    Updated DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (userId)
);

-- --------------------------------

INSERT INTO User(userId, username, profileImg) VALUES 
("NoahHan", "한노아", ''),
("RootPark", "박근원", ''),
("ming9", "강민규", ''),
("asd", "수아", ''),
("kim", "김기재", '');


-- --------------------------------

SELECT userId, username
FROM User
ORDER BY created
DESC Limit 1;

SELECT username
FROM User
WHERE userId = 'asd';

DELETE FROM User
WHERE username='박근원';

UPDATE User
SET userId = 'dsa'
WHERE username = '김기재';


