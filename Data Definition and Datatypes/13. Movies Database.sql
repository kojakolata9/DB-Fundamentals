CREATE TABLE Directors
(
Id int PRIMARY KEY  NOT NULL,
DirectorName nvarchar(30) NOT NULL,
Notes nvarchar(200)
)

CREATE TABLE Genres
(
Id int PRIMARY KEY  NOT NULL,
GenreName nvarchar(30) NOT NULL,
Notes nvarchar(200)
)
CREATE TABLE Categories
(
Id int PRIMARY KEY  NOT NULL,
CategoryName nvarchar(30) NOT NULL,
Notes nvarchar(200)
)
CREATE TABLE Movies
(
Id int PRIMARY KEY  NOT NULL,
Title nvarchar(30) NOT NULL,
DirectorId int NOT NULL,
CopyrightYear date,
[Length] datetime,
GenreId int,
CategoryId int,
Rating int,
Notes nvarchar(200)
)

INSERT INTO Directors (Id, DirectorName)
VALUES (1, 'Pesho'),(2, 'Gosho'),(3, 'Sasho'),(4, 'Misho'),(5, 'Losho')

INSERT INTO Genres (Id, GenreName)
VALUES (1, 'Action'),(2, 'Fantasy'),(3, 'Horror'),(4, 'Adventure'),(5, 'War')

INSERT INTO Categories (Id, CategoryName)
VALUES (1, 'One'),(2, 'Two'),(3, 'Three'),(4, 'Four'),(5, 'Five')

INSERT INTO Movies (Id, Title, DirectorId, GenreId, CategoryId)
VALUES (1, 'Arrow', 1, 1, 1),(2, 'Arro', 2, 2, 2),(3, 'Arr', 3, 3, 3),(4, 'Ar', 4,4, 4),(5, 'A', 5, 5, 5)