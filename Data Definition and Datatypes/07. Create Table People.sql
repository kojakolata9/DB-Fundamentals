CREATE TABLE People
(
Id int PRIMARY KEY IDENTITY NOT NULL,
Name nvarchar(200) NOT NULL,
Picture varbinary(max),
Height float,
[Weight] float,
Gender varchar(1) NOT NULL CHECK(Gender IN('m','f')),
Birthdate date NOT NULL,
Biography nvarchar(max)
)

INSERT INTO People(Name, Picture, Height, [Weight], Gender, Birthdate, Biography)
VALUES ('Pesho',NULL,NULL,NULL,'m','1992-05-12',NULL),
('Gosho',NULL,NULL,NULL,'m','1292-05-12',NULL),
('Chess',NULL,NULL,NULL,'f','1992-12-12',NULL),
('Mosho',NULL,NULL,NULL,'m','1992-05-05',NULL),
('Sasho',NULL,NULL,NULL,'f','1992-05-13',NULL)