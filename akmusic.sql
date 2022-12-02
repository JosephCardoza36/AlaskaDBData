--
-- File generated with SQLiteStudio v3.2.1 on Thu Dec 1 20:38:38 2022
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: bandstbl
DROP TABLE IF EXISTS bandstbl;

CREATE TABLE bandstbl (
    bandid   INTEGER      PRIMARY KEY ASC ON CONFLICT ROLLBACK AUTOINCREMENT,
    bandname VARCHAR (50) 
);

INSERT INTO bandstbl (
                         bandid,
                         bandname
                     )
                     VALUES (
                         1,
                         'Slough Sounders'
                     );

INSERT INTO bandstbl (
                         bandid,
                         bandname
                     )
                     VALUES (
                         2,
                         'Breakup Fever
'
                     );

INSERT INTO bandstbl (
                         bandid,
                         bandname
                     )
                     VALUES (
                         3,
                         'Tundra Kings'
                     );


-- Table: genrestbl
DROP TABLE IF EXISTS genrestbl;

CREATE TABLE genrestbl (
    genreid INTEGER      PRIMARY KEY ASC ON CONFLICT ROLLBACK AUTOINCREMENT,
    genre   VARCHAR (25) 
);

INSERT INTO genrestbl (
                          genreid,
                          genre
                      )
                      VALUES (
                          1,
                          ' Folk'
                      );

INSERT INTO genrestbl (
                          genreid,
                          genre
                      )
                      VALUES (
                          2,
                          ' Jazz'
                      );

INSERT INTO genrestbl (
                          genreid,
                          genre
                      )
                      VALUES (
                          3,
                          ' Country'
                      );


-- Table: instrumentstbl
DROP TABLE IF EXISTS instrumentstbl;

CREATE TABLE instrumentstbl (
    instrumentid INTEGER      PRIMARY KEY ASC ON CONFLICT ROLLBACK AUTOINCREMENT,
    instrument   VARCHAR (25) 
);

INSERT INTO instrumentstbl (
                               instrumentid,
                               instrument
                           )
                           VALUES (
                               1,
                               ' Lead Guitar'
                           );

INSERT INTO instrumentstbl (
                               instrumentid,
                               instrument
                           )
                           VALUES (
                               2,
                               ' Rhythm Guitar'
                           );

INSERT INTO instrumentstbl (
                               instrumentid,
                               instrument
                           )
                           VALUES (
                               3,
                               ' Bass Guitar'
                           );

INSERT INTO instrumentstbl (
                               instrumentid,
                               instrument
                           )
                           VALUES (
                               4,
                               ' Steel Guitar'
                           );

INSERT INTO instrumentstbl (
                               instrumentid,
                               instrument
                           )
                           VALUES (
                               5,
                               ' Keyboards'
                           );

INSERT INTO instrumentstbl (
                               instrumentid,
                               instrument
                           )
                           VALUES (
                               6,
                               ' Accordion'
                           );

INSERT INTO instrumentstbl (
                               instrumentid,
                               instrument
                           )
                           VALUES (
                               7,
                               ' Mandolin'
                           );

INSERT INTO instrumentstbl (
                               instrumentid,
                               instrument
                           )
                           VALUES (
                               8,
                               ' Percussion'
                           );

INSERT INTO instrumentstbl (
                               instrumentid,
                               instrument
                           )
                           VALUES (
                               9,
                               ' Lead Vocal'
                           );

INSERT INTO instrumentstbl (
                               instrumentid,
                               instrument
                           )
                           VALUES (
                               10,
                               ' Backup Vocals'
                           );


-- Table: memberstbl
DROP TABLE IF EXISTS memberstbl;

CREATE TABLE memberstbl (
    memberid  INTEGER      PRIMARY KEY ASC ON CONFLICT ROLLBACK AUTOINCREMENT,
    bandfk    INTEGER      CONSTRAINT bandfk_idx REFERENCES bandstbl (bandid) ON DELETE CASCADE
                                                                              ON UPDATE CASCADE,
    firstname VARCHAR (25),
    lastname  VARCHAR (25) 
);

INSERT INTO memberstbl (
                           memberid,
                           bandfk,
                           firstname,
                           lastname
                       )
                       VALUES (
                           1,
                           1,
                           'Adam',
                           'Akers'
                       );

INSERT INTO memberstbl (
                           memberid,
                           bandfk,
                           firstname,
                           lastname
                       )
                       VALUES (
                           2,
                           3,
                           'Bonnie',
                           'Brown'
                       );

INSERT INTO memberstbl (
                           memberid,
                           bandfk,
                           firstname,
                           lastname
                       )
                       VALUES (
                           3,
                           3,
                           'Claire',
                           'Carter'
                       );

INSERT INTO memberstbl (
                           memberid,
                           bandfk,
                           firstname,
                           lastname
                       )
                       VALUES (
                           4,
                           2,
                           'Don',
                           'Dixon'
                       );

INSERT INTO memberstbl (
                           memberid,
                           bandfk,
                           firstname,
                           lastname
                       )
                       VALUES (
                           5,
                           3,
                           'Eric',
                           'Eastman'
                       );

INSERT INTO memberstbl (
                           memberid,
                           bandfk,
                           firstname,
                           lastname
                       )
                       VALUES (
                           6,
                           2,
                           'Felix',
                           'Franke'
                       );

INSERT INTO memberstbl (
                           memberid,
                           bandfk,
                           firstname,
                           lastname
                       )
                       VALUES (
                           7,
                           1,
                           'Gail',
                           'Green'
                       );

INSERT INTO memberstbl (
                           memberid,
                           bandfk,
                           firstname,
                           lastname
                       )
                       VALUES (
                           8,
                           3,
                           'Hank',
                           'Hollis'
                       );

INSERT INTO memberstbl (
                           memberid,
                           bandfk,
                           firstname,
                           lastname
                       )
                       VALUES (
                           9,
                           2,
                           'Izzy',
                           'Isaac'
                       );

INSERT INTO memberstbl (
                           memberid,
                           bandfk,
                           firstname,
                           lastname
                       )
                       VALUES (
                           10,
                           1,
                           'Jo',
                           'Jeffries'
                       );

INSERT INTO memberstbl (
                           memberid,
                           bandfk,
                           firstname,
                           lastname
                       )
                       VALUES (
                           11,
                           3,
                           'Kayla',
                           'King'
                       );

INSERT INTO memberstbl (
                           memberid,
                           bandfk,
                           firstname,
                           lastname
                       )
                       VALUES (
                           12,
                           1,
                           'Lois',
                           'Larkin'
                       );

INSERT INTO memberstbl (
                           memberid,
                           bandfk,
                           firstname,
                           lastname
                       )
                       VALUES (
                           13,
                           2,
                           'Max',
                           'Mullins'
                       );

INSERT INTO memberstbl (
                           memberid,
                           bandfk,
                           firstname,
                           lastname
                       )
                       VALUES (
                           14,
                           2,
                           'Norma',
                           'Nabors'
                       );


-- Table: mixestbl
DROP TABLE IF EXISTS mixestbl;

CREATE TABLE mixestbl (
    mixid   INTEGER PRIMARY KEY ASC ON CONFLICT ROLLBACK AUTOINCREMENT,
    genrefk INTEGER CONSTRAINT genrefk_idx REFERENCES genrestbl (genreid) ON DELETE CASCADE
                                                                          ON UPDATE CASCADE,
    bandfk  INTEGER CONSTRAINT bandfk_idx REFERENCES bandstbl (bandid) ON DELETE CASCADE
                                                                       ON UPDATE CASCADE
);

INSERT INTO mixestbl (
                         mixid,
                         genrefk,
                         bandfk
                     )
                     VALUES (
                         1,
                         1,
                         3
                     );

INSERT INTO mixestbl (
                         mixid,
                         genrefk,
                         bandfk
                     )
                     VALUES (
                         2,
                         3,
                         3
                     );

INSERT INTO mixestbl (
                         mixid,
                         genrefk,
                         bandfk
                     )
                     VALUES (
                         3,
                         2,
                         2
                     );

INSERT INTO mixestbl (
                         mixid,
                         genrefk,
                         bandfk
                     )
                     VALUES (
                         4,
                         1,
                         2
                     );

INSERT INTO mixestbl (
                         mixid,
                         genrefk,
                         bandfk
                     )
                     VALUES (
                         5,
                         3,
                         2
                     );

INSERT INTO mixestbl (
                         mixid,
                         genrefk,
                         bandfk
                     )
                     VALUES (
                         6,
                         2,
                         1
                     );


-- Table: playstbl
DROP TABLE IF EXISTS playstbl;

CREATE TABLE playstbl (
    playid       INTEGER PRIMARY KEY ASC ON CONFLICT ROLLBACK AUTOINCREMENT,
    memberfk     INTEGER CONSTRAINT memberfk_idx REFERENCES memberstbl (memberid) ON DELETE CASCADE
                                                                                  ON UPDATE CASCADE,
    instrumentfk INTEGER CONSTRAINT instrumentfk_idx REFERENCES instrumentstbl (instrumentid) ON DELETE CASCADE
                                                                                              ON UPDATE CASCADE
);

INSERT INTO playstbl (
                         playid,
                         memberfk,
                         instrumentfk
                     )
                     VALUES (
                         1,
                         5,
                         4
                     );

INSERT INTO playstbl (
                         playid,
                         memberfk,
                         instrumentfk
                     )
                     VALUES (
                         2,
                         9,
                         7
                     );

INSERT INTO playstbl (
                         playid,
                         memberfk,
                         instrumentfk
                     )
                     VALUES (
                         3,
                         4,
                         2
                     );

INSERT INTO playstbl (
                         playid,
                         memberfk,
                         instrumentfk
                     )
                     VALUES (
                         4,
                         3,
                         3
                     );

INSERT INTO playstbl (
                         playid,
                         memberfk,
                         instrumentfk
                     )
                     VALUES (
                         5,
                         1,
                         8
                     );

INSERT INTO playstbl (
                         playid,
                         memberfk,
                         instrumentfk
                     )
                     VALUES (
                         6,
                         2,
                         1
                     );

INSERT INTO playstbl (
                         playid,
                         memberfk,
                         instrumentfk
                     )
                     VALUES (
                         7,
                         13,
                         5
                     );

INSERT INTO playstbl (
                         playid,
                         memberfk,
                         instrumentfk
                     )
                     VALUES (
                         8,
                         7,
                         3
                     );

INSERT INTO playstbl (
                         playid,
                         memberfk,
                         instrumentfk
                     )
                     VALUES (
                         9,
                         7,
                         6
                     );

INSERT INTO playstbl (
                         playid,
                         memberfk,
                         instrumentfk
                     )
                     VALUES (
                         10,
                         11,
                         1
                     );

INSERT INTO playstbl (
                         playid,
                         memberfk,
                         instrumentfk
                     )
                     VALUES (
                         11,
                         14,
                         2
                     );

INSERT INTO playstbl (
                         playid,
                         memberfk,
                         instrumentfk
                     )
                     VALUES (
                         12,
                         3,
                         8
                     );

INSERT INTO playstbl (
                         playid,
                         memberfk,
                         instrumentfk
                     )
                     VALUES (
                         13,
                         4,
                         3
                     );

INSERT INTO playstbl (
                         playid,
                         memberfk,
                         instrumentfk
                     )
                     VALUES (
                         14,
                         14,
                         7
                     );

INSERT INTO playstbl (
                         playid,
                         memberfk,
                         instrumentfk
                     )
                     VALUES (
                         15,
                         11,
                         5
                     );

INSERT INTO playstbl (
                         playid,
                         memberfk,
                         instrumentfk
                     )
                     VALUES (
                         16,
                         12,
                         7
                     );

INSERT INTO playstbl (
                         playid,
                         memberfk,
                         instrumentfk
                     )
                     VALUES (
                         17,
                         6,
                         2
                     );

INSERT INTO playstbl (
                         playid,
                         memberfk,
                         instrumentfk
                     )
                     VALUES (
                         18,
                         10,
                         1
                     );

INSERT INTO playstbl (
                         playid,
                         memberfk,
                         instrumentfk
                     )
                     VALUES (
                         19,
                         8,
                         8
                     );


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
