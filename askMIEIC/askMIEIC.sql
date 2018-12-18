--
-- File generated with SQLiteStudio v3.1.1 on ter dez 18 09:05:14 2018
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Comment
DROP TABLE IF EXISTS Comment;

CREATE TABLE Comment (
    id       INTEGER  PRIMARY KEY,
    text     VARCHAR  NOT NULL,
    datetime DATETIME NOT NULL,
    post     INTEGER  REFERENCES Post (id) ON DELETE CASCADE
                      NOT NULL,
    user     INTEGER  REFERENCES User (id) ON DELETE CASCADE
                      NOT NULL,
    points   INTEGER  NOT NULL
                      DEFAULT (0) 
);

INSERT INTO Comment (
                        id,
                        text,
                        datetime,
                        post,
                        user,
                        points
                    )
                    VALUES (
                        1,
                        'hello there ltw',
                        '2016-04-12 19:00:00',
                        1,
                        201605926,
                        1
                    );

INSERT INTO Comment (
                        id,
                        text,
                        datetime,
                        post,
                        user,
                        points
                    )
                    VALUES (
                        2,
                        'Gostei, continua',
                        '2018-12-01 04:59:00',
                        1,
                        201504711,
-                       1
                    );

INSERT INTO Comment (
                        id,
                        text,
                        datetime,
                        post,
                        user,
                        points
                    )
                    VALUES (
                        3,
                        'Que péssima dúvida',
                        '2018-11-15 21:00:00',
                        2,
                        201504711,
                        0
                    );

INSERT INTO Comment (
                        id,
                        text,
                        datetime,
                        post,
                        user,
                        points
                    )
                    VALUES (
                        4,
                        'Este não é o sítio apropriado para apresentações, apenas dúvidas!',
                        '2018-12-18 08:43:55',
                        6,
                        201012345,
                        0
                    );

INSERT INTO Comment (
                        id,
                        text,
                        datetime,
                        post,
                        user,
                        points
                    )
                    VALUES (
                        5,
                        'Esta matéria de Métodos Numéricos é bastante complicada, mas penso que a resposta certa é 10!',
                        '2018-12-18 08:51:43',
                        10,
                        201504711,
                        0
                    );


-- Table: Post
DROP TABLE IF EXISTS Post;

CREATE TABLE Post (
    id       INTEGER  PRIMARY KEY,
    subject  INTEGER  REFERENCES Subject (id) ON DELETE CASCADE
                      NOT NULL,
    title    VARCHAR  NOT NULL,
    text     VARCHAR  NOT NULL,
    datetime DATETIME NOT NULL,
    creator  INTEGER  REFERENCES User (id) ON DELETE CASCADE
                      NOT NULL,
    points   INTEGER  NOT NULL
                      DEFAULT (0) 
);

INSERT INTO Post (
                     id,
                     subject,
                     title,
                     text,
                     datetime,
                     creator,
                     points
                 )
                 VALUES (
                     1,
                     1,
                     'Ola',
                     'Tenho dúvidas nisto..',
                     '1996-04-12 22:45:00',
                     201605926,
-                    3
                 );

INSERT INTO Post (
                     id,
                     subject,
                     title,
                     text,
                     datetime,
                     creator,
                     points
                 )
                 VALUES (
                     3,
                     40,
                     'Nova dúvida',
                     'Não percebo nada...',
                     '2018-12-12 07:00:00',
                     201504711,
                     1
                 );

INSERT INTO Post (
                     id,
                     subject,
                     title,
                     text,
                     datetime,
                     creator,
                     points
                 )
                 VALUES (
                     4,
                     14,
                     'Ajuda urgente',
                     'Preciso mesmo que alguém me explique isto',
                     '2018-12-13 01:59:11',
                     201504711,
                     0
                 );

INSERT INTO Post (
                     id,
                     subject,
                     title,
                     text,
                     datetime,
                     creator,
                     points
                 )
                 VALUES (
                     5,
                     23,
                     'Alguém sabe?',
                     'Nunca vi nada tão difícil...',
                     '2018-12-13 02:00:17',
                     201504711,
-                    1
                 );

INSERT INTO Post (
                     id,
                     subject,
                     title,
                     text,
                     datetime,
                     creator,
                     points
                 )
                 VALUES (
                     6,
                     6,
                     'Entrei na FEUP',
                     'Olá a todos',
                     '2018-12-13 10:54:00',
                     201504711,
                     1
                 );

INSERT INTO Post (
                     id,
                     subject,
                     title,
                     text,
                     datetime,
                     creator,
                     points
                 )
                 VALUES (
                     7,
                     2,
                     'Como se resolve?',
                     'Não consegui chegar ao resultado final',
                     '2018-12-16 22:47:05',
                     201605926,
                     0
                 );

INSERT INTO Post (
                     id,
                     subject,
                     title,
                     text,
                     datetime,
                     creator,
                     points
                 )
                 VALUES (
                     8,
                     3,
                     'Muitas dificuldades',
                     'Esta matéria é muito densa',
                     '2018-12-16 22:47:55',
                     201605926,
                     2
                 );

INSERT INTO Post (
                     id,
                     subject,
                     title,
                     text,
                     datetime,
                     creator,
                     points
                 )
                 VALUES (
                     9,
                     4,
                     'Pequena dúvida',
                     'É mesmo pequena',
                     '2018-12-16 22:47:56',
                     201605926,
                     0
                 );

INSERT INTO Post (
                     id,
                     subject,
                     title,
                     text,
                     datetime,
                     creator,
                     points
                 )
                 VALUES (
                     10,
                     13,
                     'Contagem de coelhos',
                     'Alguém me sabe dizer quantos coelhos estão nesta imagem???',
                     '2018-12-18 08:48:28',
                     201012345,
                     2
                 );


-- Table: Subject
DROP TABLE IF EXISTS Subject;

CREATE TABLE Subject (
    id   INTEGER PRIMARY KEY,
    name VARCHAR NOT NULL
                 UNIQUE,
    year INTEGER NOT NULL
);

INSERT INTO Subject (
                        id,
                        name,
                        year
                    )
                    VALUES (
                        1,
                        'MDIS',
                        1
                    );

INSERT INTO Subject (
                        id,
                        name,
                        year
                    )
                    VALUES (
                        2,
                        'AOCO',
                        1
                    );

INSERT INTO Subject (
                        id,
                        name,
                        year
                    )
                    VALUES (
                        3,
                        'FPRO',
                        1
                    );

INSERT INTO Subject (
                        id,
                        name,
                        year
                    )
                    VALUES (
                        4,
                        'AMAT',
                        1
                    );

INSERT INTO Subject (
                        id,
                        name,
                        year
                    )
                    VALUES (
                        5,
                        'ALGE',
                        1
                    );

INSERT INTO Subject (
                        id,
                        name,
                        year
                    )
                    VALUES (
                        6,
                        'PF',
                        1
                    );

INSERT INTO Subject (
                        id,
                        name,
                        year
                    )
                    VALUES (
                        7,
                        'MEST',
                        1
                    );

INSERT INTO Subject (
                        id,
                        name,
                        year
                    )
                    VALUES (
                        8,
                        'PROG',
                        1
                    );

INSERT INTO Subject (
                        id,
                        name,
                        year
                    )
                    VALUES (
                        9,
                        'FISI1',
                        1
                    );

INSERT INTO Subject (
                        id,
                        name,
                        year
                    )
                    VALUES (
                        10,
                        'CMAT',
                        1
                    );

INSERT INTO Subject (
                        id,
                        name,
                        year
                    )
                    VALUES (
                        11,
                        'MPCP',
                        1
                    );

INSERT INTO Subject (
                        id,
                        name,
                        year
                    )
                    VALUES (
                        12,
                        'TCOM',
                        2
                    );

INSERT INTO Subject (
                        id,
                        name,
                        year
                    )
                    VALUES (
                        13,
                        'MNUM',
                        2
                    );

INSERT INTO Subject (
                        id,
                        name,
                        year
                    )
                    VALUES (
                        14,
                        'FISI2',
                        2
                    );

INSERT INTO Subject (
                        id,
                        name,
                        year
                    )
                    VALUES (
                        15,
                        'AEDA',
                        2
                    );

INSERT INTO Subject (
                        id,
                        name,
                        year
                    )
                    VALUES (
                        16,
                        'LCOM',
                        2
                    );

INSERT INTO Subject (
                        id,
                        name,
                        year
                    )
                    VALUES (
                        17,
                        'BDAD',
                        2
                    );

INSERT INTO Subject (
                        id,
                        name,
                        year
                    )
                    VALUES (
                        18,
                        'CAL',
                        2
                    );

INSERT INTO Subject (
                        id,
                        name,
                        year
                    )
                    VALUES (
                        19,
                        'CGRA',
                        2
                    );

INSERT INTO Subject (
                        id,
                        name,
                        year
                    )
                    VALUES (
                        20,
                        'SOPE',
                        2
                    );

INSERT INTO Subject (
                        id,
                        name,
                        year
                    )
                    VALUES (
                        21,
                        'LPOO',
                        2
                    );

INSERT INTO Subject (
                        id,
                        name,
                        year
                    )
                    VALUES (
                        22,
                        'PLOG',
                        3
                    );

INSERT INTO Subject (
                        id,
                        name,
                        year
                    )
                    VALUES (
                        23,
                        'LAIG',
                        3
                    );

INSERT INTO Subject (
                        id,
                        name,
                        year
                    )
                    VALUES (
                        24,
                        'ESOF',
                        3
                    );

INSERT INTO Subject (
                        id,
                        name,
                        year
                    )
                    VALUES (
                        25,
                        'RCOM',
                        3
                    );

INSERT INTO Subject (
                        id,
                        name,
                        year
                    )
                    VALUES (
                        26,
                        'LTW',
                        3
                    );

INSERT INTO Subject (
                        id,
                        name,
                        year
                    )
                    VALUES (
                        27,
                        'LBAW',
                        3
                    );

INSERT INTO Subject (
                        id,
                        name,
                        year
                    )
                    VALUES (
                        28,
                        'IART',
                        3
                    );

INSERT INTO Subject (
                        id,
                        name,
                        year
                    )
                    VALUES (
                        29,
                        'COMP',
                        3
                    );

INSERT INTO Subject (
                        id,
                        name,
                        year
                    )
                    VALUES (
                        30,
                        'SDIS',
                        3
                    );

INSERT INTO Subject (
                        id,
                        name,
                        year
                    )
                    VALUES (
                        31,
                        'PPIN',
                        3
                    );

INSERT INTO Subject (
                        id,
                        name,
                        year
                    )
                    VALUES (
                        32,
                        'SINF',
                        4
                    );

INSERT INTO Subject (
                        id,
                        name,
                        year
                    )
                    VALUES (
                        33,
                        'LDSO',
                        4
                    );

INSERT INTO Subject (
                        id,
                        name,
                        year
                    )
                    VALUES (
                        34,
                        'GEMP',
                        4
                    );

INSERT INTO Subject (
                        id,
                        name,
                        year
                    )
                    VALUES (
                        35,
                        'AIAD',
                        4
                    );

INSERT INTO Subject (
                        id,
                        name,
                        year
                    )
                    VALUES (
                        36,
                        'MFES',
                        4
                    );

INSERT INTO Subject (
                        id,
                        name,
                        year
                    )
                    VALUES (
                        37,
                        'IOPE',
                        4
                    );

INSERT INTO Subject (
                        id,
                        name,
                        year
                    )
                    VALUES (
                        38,
                        'LGPR',
                        4
                    );

INSERT INTO Subject (
                        id,
                        name,
                        year
                    )
                    VALUES (
                        39,
                        'PDIS',
                        5
                    );

INSERT INTO Subject (
                        id,
                        name,
                        year
                    )
                    VALUES (
                        40,
                        'DISS',
                        5
                    );


-- Table: User
DROP TABLE IF EXISTS User;

CREATE TABLE User (
    id       INTEGER PRIMARY KEY
                     CHECK (id >= 201000000 AND 
                            id <= 201999999),
    name     VARCHAR NOT NULL,
    email    VARCHAR NOT NULL
                     CHECK (email LIKE "%@%.%"),
    password VARCHAR NOT NULL
);

INSERT INTO User (
                     id,
                     name,
                     email,
                     password
                 )
                 VALUES (
                     201012345,
                     'Joaquim Coelho',
                     'jaquim@coelhos.pt',
                     'd5259b34302051c11b07ffaa8932486f4a211e5176be9ed9628bf11331dc2dca'
                 );

INSERT INTO User (
                     id,
                     name,
                     email,
                     password
                 )
                 VALUES (
                     201504711,
                     'Bernardo Santos',
                     'beny@gmail.com',
                     '008c70392e3abfbd0fa47bbc2ed96aa99bd49e159727fcba0f2e6abeb3a9d601'
                 );

INSERT INTO User (
                     id,
                     name,
                     email,
                     password
                 )
                 VALUES (
                     201605926,
                     'Joao Sousa',
                     'joao@gmail.com',
                     'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3'
                 );


-- Table: ValueComment
DROP TABLE IF EXISTS ValueComment;

CREATE TABLE ValueComment (
    idUser    INTEGER REFERENCES User (id) ON DELETE CASCADE,
    idComment INTEGER REFERENCES Comment (id) ON DELETE CASCADE,
    value     INTEGER NOT NULL,
    PRIMARY KEY (
        idUser,
        idComment
    )
);

INSERT INTO ValueComment (
                             idUser,
                             idComment,
                             value
                         )
                         VALUES (
                             201605926,
                             1,
                             1
                         );

INSERT INTO ValueComment (
                             idUser,
                             idComment,
                             value
                         )
                         VALUES (
                             201504711,
                             2,
-                            1
                         );


-- Table: ValuePost
DROP TABLE IF EXISTS ValuePost;

CREATE TABLE ValuePost (
    idUser INTEGER REFERENCES User (id) ON DELETE CASCADE,
    idPost INTEGER REFERENCES Post (id) ON DELETE CASCADE,
    value  INTEGER NOT NULL,
    PRIMARY KEY (
        idUser,
        idPost
    )
);

INSERT INTO ValuePost (
                          idUser,
                          idPost,
                          value
                      )
                      VALUES (
                          201605926,
                          1,
-                         1
                      );

INSERT INTO ValuePost (
                          idUser,
                          idPost,
                          value
                      )
                      VALUES (
                          201504711,
                          6,
                          1
                      );

INSERT INTO ValuePost (
                          idUser,
                          idPost,
                          value
                      )
                      VALUES (
                          201504711,
                          8,
                          1
                      );

INSERT INTO ValuePost (
                          idUser,
                          idPost,
                          value
                      )
                      VALUES (
                          201012345,
                          8,
                          1
                      );

INSERT INTO ValuePost (
                          idUser,
                          idPost,
                          value
                      )
                      VALUES (
                          201012345,
                          1,
-                         1
                      );

INSERT INTO ValuePost (
                          idUser,
                          idPost,
                          value
                      )
                      VALUES (
                          201012345,
                          3,
                          1
                      );

INSERT INTO ValuePost (
                          idUser,
                          idPost,
                          value
                      )
                      VALUES (
                          201012345,
                          5,
-                         1
                      );

INSERT INTO ValuePost (
                          idUser,
                          idPost,
                          value
                      )
                      VALUES (
                          201012345,
                          10,
                          1
                      );

INSERT INTO ValuePost (
                          idUser,
                          idPost,
                          value
                      )
                      VALUES (
                          201504711,
                          10,
                          1
                      );

INSERT INTO ValuePost (
                          idUser,
                          idPost,
                          value
                      )
                      VALUES (
                          201504711,
                          1,
-                         1
                      );


-- Trigger: addValueComment
DROP TRIGGER IF EXISTS addValueComment;
CREATE TRIGGER addValueComment
         AFTER INSERT
            ON ValueComment
      FOR EACH ROW
BEGIN
    UPDATE Comment
       SET points = points + new.value
     WHERE Comment.id = new.idComment;
END;


-- Trigger: addValuePost
DROP TRIGGER IF EXISTS addValuePost;
CREATE TRIGGER addValuePost
         AFTER INSERT
            ON ValuePost
      FOR EACH ROW
BEGIN
    UPDATE Post
       SET points = points + new.value
     WHERE Post.id = new.idPost;
END;


-- Trigger: deleteValueComment
DROP TRIGGER IF EXISTS deleteValueComment;
CREATE TRIGGER deleteValueComment
        BEFORE DELETE
            ON ValueComment
      FOR EACH ROW
BEGIN
    UPDATE Comment
       SET points = points - old.value
     WHERE Comment.id = old.idComment;
END;


-- Trigger: deleteValuePost
DROP TRIGGER IF EXISTS deleteValuePost;
CREATE TRIGGER deleteValuePost
        BEFORE DELETE
            ON ValuePost
      FOR EACH ROW
BEGIN
    UPDATE Post
       SET points = points - old.value
     WHERE Post.id = old.idPost;
END;


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
