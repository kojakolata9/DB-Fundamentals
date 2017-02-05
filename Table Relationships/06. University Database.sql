CREATE TABLE Subjects(
SubjectID INT PRIMARY KEY NOT NULL,
SubjectName VARCHAR(50) NOT NULL
)

CREATE TABLE Majors(
MajorID INT PRIMARY KEY NOT NULL,
Name VARCHAR(50) NOT NULL
)

CREATE TABLE Students (
StudentID INT PRIMARY KEY NOT NULL,
StudentNumber INT NOT NULL,
StudentName VARCHAR(50) NOT NULL,
MajorID INT NOT NULL,
CONSTRAINT FK_MajorID FOREIGN KEY (MajorID) REFERENCES Majors(MajorID)
)

CREATE TABLE Payments(
PaymentID INT PRIMARY KEY NOT NULL,
PaymentDate DATE NOT NULL,
PaymentAmount DECIMAL(8,2) NOT NULL,
StudentID INT NOT NULL,
CONSTRAINT FK_Payments_StudentID FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
)

CREATE TABLE Agenda (
StudentID INT NOT NULL,
SubjectID INT NOT NULL,
CONSTRAINT PK_Agenda PRIMARY KEY(StudentID,SubjectID),
CONSTRAINT FK_Agenda_StudentID FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
CONSTRAINT FK_SubjectID FOREIGN KEY (SubjectID) REFERENCES Subjects(SubjectID)
)