
CREATE TABLE Categories
(
Id int PRIMARY KEY  NOT NULL,
Category nvarchar(30) NOT NULL,
DailyRate real,
WeeklyRate real,
MonthlyRate real,
WeekendRate real
)

CREATE TABLE Cars
(
Id int PRIMARY KEY  NOT NULL,
PlateNumber varchar(10) NOT NULL,
Make        varchar(50) NOT NULL,
Model       varchar(50) NOT NULL,
CarYear     date NOT NULL,
Doors       int,
Picture     varbinary(MAX),
Condition   varchar(50) NOT NULL CHECK (Condition IN('Bad', 'Average',
'Good')),
Available   bit NOT NULL
)

CREATE TABLE Employees
  (
     Id        int PRIMARY KEY NOT NULL,
     FirstName nvarchar(50) NOT NULL,
     LastName  nvarchar(50) NOT NULL,
     Title     nvarchar(50) NOT NULL,
     Notes     nvarchar(200)
  )

  CREATE TABLE Customers
  (
     Id                  int PRIMARY KEY NOT NULL,
     DriverLicenseNumber nvarchar(50) NOT NULL,
     FullName            nvarchar(50) NOT NULL,
     Adress              nvarchar(50),
     City                nvarchar(50),
     ZIPCode             int,
     Notes               nvarchar(200)
  )

  CREATE TABLE RentalOrders
  (
     Id               int PRIMARY KEY NOT NULL,
     EmployeeId       int NOT NULL,
     CustomerId       int NOT NULL,
     CarId            int NOT NULL,
     CarCondition     varchar(50) NOT NULL,
     TankLevel        nvarchar(50),
     KilometrageStart real NOT NULL,
     KilometrageEnd   real NOT NULL,
     TotalKilometrage real,
     StartDate        date NOT NULL,
     EndDate          date NOT NULL,
     TotalDays        date,
     RateApplied      real NOT NULL,
     TaxRate          real,
     OrderStatus      nvarchar(50) CHECK (OrderStatus IN ('Active', 'Inactive'))
     ,
     Notes            nvarchar(200)
  )

  
INSERT INTO Categories
            (Id,
             Category,
             MonthlyRate)
VALUES      (1,
             'Cars',
             '500')

INSERT INTO Categories
            (Id,
             Category,
             MonthlyRate)
VALUES      (2,
             'Trucks',
             '950')

INSERT INTO Categories
            (Id,
             Category,
             MonthlyRate)
VALUES      (3,
             'Cars',
             '600');

INSERT INTO Cars
            (Id,
             PlateNumber,
             Make,
             Model,
             CarYear,
             Condition,
             Available)
VALUES      (1,
             'GB2514',
             'BMW',
             '5 Series',
             '20000101',
             'Good',
             1)

INSERT INTO Cars
            (Id,
             PlateNumber,
             Make,
             Model,
             CarYear,
             Condition,
             Available)
VALUES      (2,
             'CH9696',
             'Mercedes',
             'CL200',
             '20000101',
             'Good',
             1)

INSERT INTO Cars
            (Id,
             PlateNumber,
             Make,
             Model,
             CarYear,
             Condition,
             Available)
VALUES      (3,
             'FR2414',
             'Audi',
             'A6',
             '20000101',
             'Good',
             0);

INSERT INTO Employees
            (Id,
             FirstName,
             LastName,
             Title)
VALUES      (1,
             'Dan',
             'Wise',
             'CEO')

INSERT INTO Employees
            (Id,
             FirstName,
             LastName,
             Title)
VALUES      (2,
             'Phil',
             'Jones',
             'Secretary')

INSERT INTO Employees
            (Id,
             FirstName,
             LastName,
             Title)
VALUES      (3,
             'Vinnie',
             'Northman',
             'Janitor')

INSERT INTO Customers
            (Id,
             DriverLicenseNumber,
             FullName)
VALUES      (1,
             'asd486453',
             'Mark Dane')

INSERT INTO Customers
            (Id,
             DriverLicenseNumber,
             FullName)
VALUES      (2,
             'htr8451',
             'Peter Griffin')

INSERT INTO Customers
            (Id,
             DriverLicenseNumber,
             FullName)
VALUES      (3,
             'erty897897',
             'Louis Jefferson');

INSERT INTO RentalOrders
            (Id,
             EmployeeId,
             CustomerId,
             CarId,
             CarCondition,
             TankLevel,
             KilometrageStart,
             KilometrageEnd,
             TotalKilometrage,
             StartDate,
             EndDate,
             TotalDays,
             RateApplied)
VALUES     (1,
            1,
            1,
            1,
            'Good',
            'Full',
            10,
            20,
            10,
            '2015-01-01',
            '2015-02-03',
            NULL,
            1987.15);

INSERT INTO RentalOrders
            (Id,
             EmployeeId,
             CustomerId,
             CarId,
             CarCondition,
             TankLevel,
             KilometrageStart,
             KilometrageEnd,
             TotalKilometrage,
             StartDate,
             EndDate,
             TotalDays,
             RateApplied)
VALUES     (2,
            2,
            2,
            2,
            'Good',
            'Full',
            20,
            30,
            10,
            '2015-01-01',
            '2015-02-03',
            NULL,
            567.15);

INSERT INTO RentalOrders
            (Id,
             EmployeeId,
             CustomerId,
             CarId,
             CarCondition,
             TankLevel,
             KilometrageStart,
             KilometrageEnd,
             TotalKilometrage,
             StartDate,
             EndDate,
             TotalDays,
             RateApplied)
VALUES     (3,
            3,
            3,
            3,
            'Good',
            'Full',
            40,
            50,
            10,
            '2015-02-01',
            '2015-02-03',
            NULL,
            95.35); 

