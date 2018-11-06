--
-- File generated with SQLiteStudio v3.1.1 on ter nov 6 11:55:59 2018
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Comment
DROP TABLE IF EXISTS Comment;

CREATE TABLE Comment (
    id   INTEGER PRIMARY KEY,
    text VARCHAR NOT NULL,
    date DATE    NOT NULL,
    post INTEGER REFERENCES Post (id) 
                 NOT NULL,
    user INTEGER REFERENCES User (id) 
                 NOT NULL
);


-- Table: Post
DROP TABLE IF EXISTS Post;

CREATE TABLE Post (
    id      INTEGER PRIMARY KEY,
    title   VARCHAR NOT NULL,
    date    DATE    NOT NULL,
    creator INTEGER REFERENCES User (id) 
                    NOT NULL
);


-- Table: User
DROP TABLE IF EXISTS User;

CREATE TABLE User (
    id         INTEGER PRIMARY KEY,
    name       VARCHAR NOT NULL,
    email      VARCHAR NOT NULL
                       CHECK (email LIKE "%@.%.%"),
    password   VARCHAR NOT NULL,
    profilePic BLOB
);


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
