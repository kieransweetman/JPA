

CREATE TABLE IF NOT EXISTS    CLIENT (
    ID serial PRIMARY KEY,
    NAME VARCHAR(50),
    LASTNAME VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS    BOOK (
    ID serial PRIMARY KEY,
    TITLE VARCHAR(50),
    AUTHOR VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS    LOAN (
    ID serial PRIMARY KEY,
    STARTDATE DATE,
    ENDDATE DATE,
    DURATION INT,
    CLIENT_ID INT,
    FOREIGN KEY (CLIENT_ID) REFERENCES CLIENT(ID)
);

CREATE TABLE IF NOT EXISTS    BOOKLOAN (
    BOOK_ID INT,
    LOAN_ID INT,
    PRIMARY KEY (BOOK_ID, LOAN_ID),
    FOREIGN KEY (BOOK_ID) REFERENCES BOOK(ID),
    FOREIGN KEY (LOAN_ID) REFERENCES LOAN(ID)
);

insert into CLIENT VALUES (1, 'Brigand', 'Pierre');
insert into CLIENT VALUES (2, 'YU', 'Cheng');
insert into CLIENT VALUES (3, 'BERRAD', 'Hicham');
insert into BOOK VALUES (1, 'Vingt mille lieues sous les mers', 'Jules Verne');
insert into BOOK VALUES (2, 'Germinal', 'Emile Zola');
insert into BOOK VALUES (3, 'Guerre et paix', 'Léon Tolstoï');
insert into BOOK VALUES (4, 'Apprendre à parler aux animaux', 'Gaston Pouet');
insert into BOOK VALUES (5, '1001 recettes de Cuisine', 'Jean-Pierre Coffe');
insert into LOAN VALUES (1, '2017-11-12', '2017-11-18', 15, 1);
insert into LOAN VALUES (2, '2017-12-08', '2017-12-23', 30, 2);
insert into LOAN VALUES (3, '2017-12-09', '2018-01-04', 30, 3);
insert into LOAN VALUES (4, '2018-01-03', NULL, 21, 1);
insert into LOAN VALUES (5, '2018-01-13', NULL, 21, 3);
insert into BOOKLOAN VALUES (1, 1);
insert into BOOKLOAN VALUES (4, 1);
insert into BOOKLOAN VALUES (2, 2);
insert into BOOKLOAN VALUES (3, 2);
insert into BOOKLOAN VALUES (1, 3);
insert into BOOKLOAN VALUES (5, 4);
insert into BOOKLOAN VALUES (2, 4);
insert into BOOKLOAN VALUES (3, 5);