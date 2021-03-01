DROP TABLE BookContent;
DROP TABLE Books;
DROP TABLE teachers;
DROP TABLE students;
DROP TABLE organizations;

CREATE TABLE BookContent
(
   ID int NOT NULL AUTO_INCREMENT,
   Content LONGBLOB,
   PRIMARY KEY (ID)
);

INSERT INTO BookContent (Content) 
VALUES('C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/usaq.txt');


CREATE TABLE Books (
	BookId int NOT NULL AUTO_INCREMENT,
    Name varchar(255) NOT NULL,
    Author varchar(255) NOT NULL,
    Level int,
    PRIMARY KEY (BookId)
);

CREATE TABLE Organizations (
	OrgId int NOT NULL AUTO_INCREMENT,
    Name varchar(255) NOT NULL,
    PRIMARY KEY (OrgId)
);
INSERT INTO Organizations (Name)
VALUES ('244'),('245'),('246'),('247'),('248');
    
CREATE TABLE Teachers (
    TeacherId int NOT NULL AUTO_INCREMENT,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    email varchar(255) NOT NULL,
    password varchar(255) NOT NULL,
    school varchar(255) NOT NULL,
    PRIMARY KEY (TeacherId)
);
INSERT INTO teachers (FirstName, LastName, email, password, school)
VALUES ('Miquel', 'Dulin', 'miqueldulin@gmail.com', 'miquel', '244'),
('Carri', 'Yao', 'carriyao@gmail.com','carri' ,'244'),
('Jayme', 'teachersPartridge', 'jaymepartridge@gmail.com', 'jatme', '244'),
('Kasi', 'Hagens','kasihagens@gmail.com', 'kasi','245'),
('Marianne',  'Colson', 'mariannecolson@gmail.com', 'marianne', '245'),
('Kizzy', 'Tews', 'kizzytews@gmail.com', 'kizzy',  '245'),
('Thomasina', 'Schafer', 'thomasinaschafer@gmail.com', 'thomasina', '245'),
('Clayton', ' Ulrich', 'claytonulrich@gmail.com', 'clayton', '245'),
('Analisa', ' Offutt', 'analisaoffutt@gmail.com', 'analisa', '245'),
('Michale', ' Marsden', 'mihalemarsden@gmail.com', 'michale', '245'),
('Portia', ' Meneses', 'portiameneses@gmail.com', 'portia', '245'),
('Burt', ' Kurtz', 'burtkurtz@gmail.com', 'burt', '245'),
('Alicia', ' Wakeman', 'aliciawakeman@gmail.com', 'alicia', '245'),
('Ka', ' Gilroy', 'kagilroy@gmail.com', 'ka', '245'),
('Leslie', ' Sartin', 'lesliesartin@gmail.com', 'leslie', '245'),
('Gregorio', ' Donley', 'gregoriodonley@gmail.com', 'gregorio', '246'),
('Lucie', ' Bloomquis', 'luciebloomquis@gmail.com', 'lucie', '246'),
('Katlyn', ' Pernice', 'katlynpernice@gmail.com', 'katlyn', '246'),
('Charlette', ' Bunt', 'charlettebunr@gmail.com', 'charlette', '246'),
('Louise', ' Sulik', 'lousiesulik@gmail.com', 'louise', '246'),
('Amalia', ' Pearse', 'amaliapearse@gmail.com', 'amalia', '246'),
('Malcom', ' Olmstead', 'malcomolmstead@gmail.com', 'malcom', '246'),
('Millicent', ' Willams', 'millicentwilliams@gmail.com', 'millicent', '247'),
('Marilynn', ' Font', 'marilynnfont@gmail.com', 'marilynn', '247'),
('Armida', ' Toland', 'armidatoland@gmail.com', 'armida', '247'),
('Ellan', ' Cryan', 'ellancryan@gmail.com', 'ellan', '247'),
('John', ' Mcculloch', 'johnmcculloch@gmail.com', 'john', '247'),
('Lucio', ' Limones', 'luciolimones@gmail.com', 'lucio', '248'),
('Cornelius', ' Chunn', 'corneliuschunn@gmail.com', 'cornelius', '248'),
('Glory', ' Lurry', 'glorylurry@gmail.com', 'glory', '248');


CREATE TABLE Students (
    StudentId int NOT NULL AUTO_INCREMENT,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    password varchar(255),
    class int,
    school varchar(255),
    teacherID int,
    readingLevel int,
    booksRead JSON,
    PRIMARY KEY (StudentId)
);
INSERT INTO students (FirstName, LastName, password, class, school, teacherID)
VALUES ('Miquel', 'Dulin',  'miquel', 1, '244', 1),
('Carri', 'Yao','carri' , 1, '244', 1),
('Jayme', 'teachersPartridge', 'jatme',  1, '244', 1),
('Kasi', 'Hagens','kasi', 1, '244', 1),
('Marianne',  'Colson', 'marianne', 1, '244', 1),
('Kizzy', 'Tews', 'kizzy', 1, '244', 1),
('Thomasina', 'Schafer', 'thomasina',  1, '244', 1),
('Clayton', ' Ulrich',  'clayton',  1, '244', 1),
('Analisa', ' Offutt', 'analisa',  1, '244', 1),
('Michale', ' Marsden',  'michale',  1, '244', 1),
('Portia', ' Meneses', 'portia', 1, '244', 1),
('Burt', ' Kurtz', 'burt',  1, '244', 1),
('Alicia', ' Wakeman', 'alicia',  1, '244', 1),
('Ka', ' Gilroy', 'ka',  1, '244', 1),
('Leslie', ' Sartin', 'leslie',  1, '244', 1),
('Gregorio', ' Donley','gregorio',  1, '244', 1),
('Lucie', ' Bloomquis', 'lucie',  1, '244', 1),
('Katlyn', ' Pernice', 'katlyn',  1, '244', 1),
('Charlette', ' Bunt', 'charlette',  1, '244', 1),
('Louise', ' Sulik',  'louise',  1, '244', 1),
('Amalia', ' Pearse', 'amalia',  1, '244', 1),
('Miquel', 'Dulin',  'miquel', 1, '244', 2),
('Carri', 'Yao','carri' , 1, '244', 2),
('Jayme', 'teachersPartridge', 'jatme',  1, '244', 2),
('Kasi', 'Hagens','kasi', 1, '244', 2),
('Marianne',  'Colson', 'marianne', 1, '244', 2),
('Kizzy', 'Tews', 'kizzy',   1, '244', 2),
('Thomasina', 'Schafer', 'thomasina',  1, '244', 2),
('Clayton', ' Ulrich',  'clayton',  1, '244', 2),
('Analisa', ' Offutt', 'analisa',  1, '244', 2),
('Michale', ' Marsden',  'michale',  1, '244', 2),
('Portia', ' Meneses', 'portia', 1, '244', 2),
('Burt', ' Kurtz', 'burt',  1, '244', 2),
('Alicia', ' Wakeman', 'alicia',  1, '244', 2),
('Ka', ' Gilroy', 'ka',  1, '244', 1),
('Leslie', ' Sartin', 'leslie', 1, '244', 2),
('Gregorio', ' Donley','gregorio',  1, '244', 2),
('Lucie', ' Bloomquis', 'lucie',  1, '244', 2),
('Katlyn', ' Pernice', 'katlyn',  1, '244', 2),
('Charlette', ' Bunt', 'charlette',  1, '244', 2),
('Louise', ' Sulik',  'louise',  1, '244', 2),
('Amalia', ' Pearse', 'amalia',  1, '244', 2),
('Miquel', 'Dulin',  'miquel', 1, '244', 3),
('Carri', 'Yao','carri' , 1, '244', 3),
('Jayme', 'teachersPartridge', 'jatme',  1, '244', 3),
('Kasi', 'Hagens','kasi', 1, '244', 3),
('Marianne',  'Colson', 'marianne', 1, '244', 3),
('Kizzy', 'Tews', 'kizzy',   1, '244', 3),
('Thomasina', 'Schafer', 'thomasina',  1, '244', 3),
('Clayton', ' Ulrich',  'clayton',  1, '244', 3),
('Analisa', ' Offutt', 'analisa',  1, '244', 3),
('Michale', ' Marsden',  'michale',  1, '244', 3),
('Portia', ' Meneses', 'portia',  1, '244', 3),
('Burt', ' Kurtz', 'burt',  1, '244', 3),
('Alicia', ' Wakeman', 'alicia',  1, '244', 3),
('Ka', ' Gilroy', 'ka',  1, '244', 3),
('Leslie', ' Sartin', 'leslie',  1, '244', 3),
('Gregorio', ' Donley','gregorio',  1, '244', 3),
('Lucie', ' Bloomquis', 'lucie',  1, '244', 3),
('Katlyn', ' Pernice', 'katlyn',  1, '244', 3),
('Charlette', ' Bunt', 'charlette',  1, '244', 3),
('Louise', ' Sulik',  'louise',  1, '244', 3),
('Amalia', ' Pearse', 'amalia',  1, '244', 3);




