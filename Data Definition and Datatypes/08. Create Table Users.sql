CREATE TABLE Users
(
Id int PRIMARY KEY IDENTITY NOT NULL,
Username varchar(30) NOT NULL,
[Password] varchar(26) NOT NULL,
ProfilePicture varbinary(7200),
LastLoginTime date,
IsDeleted bit
)

INSERT INTO Users(Username, [Password], ProfilePicture, LastLoginTime, IsDeleted)
VALUES ('pesho','pesho',NULL,NULL,NULL),
('sasho','weqr',NULL,NULL,NULL),
('gosho','fdgds',NULL,NULL,NULL),
('misho','ljhlhj',NULL,NULL,NULL),
('losho','1245457',NULL,NULL,NULL)