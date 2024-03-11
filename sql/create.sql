DROP SCHEMA IF EXISTS eos_week2;
CREATE SCHEMA IF NOT EXISTS eos_week2 DEFAULT CHARACTER SET utf8;
USE eos_week2;

-- --------------------------------

DROP TABLE IF EXISTS user;

CREATE DATABASE IF NOT EXISTS User(
    userId VARCHAR(60),
    username VARCHAR(20),
    profileImg VARCHAR(200),
    created  DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP() ,
    Updated DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
    PRIMARY KEY (userId)
);

-- --------------------------------

INSERT INTO User(userId, username) VALUES 
("NoahHan", "한노아"),
("RootPark","박근원"),
("ming9","강민규"),
("suah","수아"),
("remi","다니엘");