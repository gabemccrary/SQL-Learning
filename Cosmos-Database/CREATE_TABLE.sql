/**********************
PLANETS
**********************/
CREATE TABLE Planets (
    PlanetId INT PRIMARY KEY,
    PlanetName VARCHAR(100),
    StarSystem VARCHAR(100),
    Inhabited BIT,
    LogDate SMALLDATETIME,
    Composition VARCHAR(100)
);

/**********************
Kindred
**********************/
CREATE TABLE Kindred (
    KindredId INT PRIMARY KEY,
    HomePlanetId INT,
    Name VARCHAR(100),
    Humanoid BIT,
    Sapience BIT,
    AverageLifespan INT,
    Description VARCHAR(MAX),
    FirstContact DATE,
    FOREIGN KEY (HomePlanetId) REFERENCES Planets(PlanetId)
);

/**********************
SHIPS
**********************/
CREATE TABLE Ships (
    ShipId INT PRIMARY KEY,
    Manufacturer VARCHAR(100),
    Model VARCHAR(100),
    ShipClass VARCHAR(10),
    Capacity INT,
    StartYear INT,
    EndYear INT
);

/**********************
ADDRESS
**********************/
CREATE TABLE Address (
    AddressID INT PRIMARY KEY,
    Number INT,
    Street NVARCHAR(50),
    City NVARCHAR(100),
    State NVARCHAR(50),
    Nation NVARCHAR(50),
    Planet NVARCHAR(50)
);

/**********************
INDIVIDUALS
**********************/
CREATE TABLE Individuals (
    IndividualId INT PRIMARY KEY,
    KindredId INT,
    HomePlanetId INT,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    EarthDOB DATE,
    FOREIGN KEY (KindredId) REFERENCES Kindred(KindredId),
    FOREIGN KEY (HomePlanetId) REFERENCES Planets(PlanetId)
);

/**********************
CONTACT
**********************/
CREATE TABLE Contact (
    ContactId INT PRIMARY KEY,
    IndividualId INT,
    AddressID INT,
    EmailAddress NVARCHAR(50),
    PhoneNumber NVARCHAR(50),
    FOREIGN KEY (IndividualId) REFERENCES Individuals(IndividualId),
    FOREIGN KEY (AddressId) REFERENCES Address(AddressID)
);

/**********************
VOYAGE
**********************/
CREATE TABLE Voyage (
    VoyageId INT PRIMARY KEY,
    ShipId INT,
    OriginPlanetId INT,
    DestinationPlanetId INT,
    StartDate DATE,
    EndDate DATE,
    Purpose VARCHAR(MAX),
    ProjectedCost MONEY,
    FinalCost MONEY,
    FOREIGN KEY (ShipId) REFERENCES Ships(ShipId),
    FOREIGN KEY (OriginPlanetId) REFERENCES Planets(PlanetId),
    FOREIGN KEY (DestinationPlanetId) REFERENCES Planets(PlanetId)
);

/**********************
EVALUATION
**********************/
CREATE TABLE Evaluation (
    EvaluationId INT PRIMARY KEY,
    IndividualId INT NOT NULL,
    EvaluatorId INT NOT NULL,
    EvalDate DATE,
    Score INT,
    Notes VARCHAR(MAX),
    FOREIGN KEY (IndividualId) REFERENCES Individuals(IndividualId),
    FOREIGN KEY (EvaluatorId) REFERENCES Individuals(IndividualId)
);

/**********************
DISCOVERY
**********************/
CREATE TABLE Discovery (
    DiscoveryId INT PRIMARY KEY,
    LoggerId INT,
    VoyageID INT,
    DiscoveryType NVARCHAR(50),
    Description VARCHAR(MAX),
    LogDate SMALLDATETIME DEFAULT GETDATE(),
    FOREIGN KEY (LoggerId) REFERENCES Individuals(IndividualId),
    FOREIGN KEY (VoyageId) REFERENCES Voyage(VoyageId)
);

/**********************
CONFLICT
**********************/
CREATE TABLE Conflict (
    ConflictId INT PRIMARY KEY,
    VoyageId INT,
    ConflictName VARCHAR(100),
    StartDate DATE,
    EndDate DATE,
    Description VARCHAR(MAX),
    Outcome VARCHAR(100),
    FOREIGN KEY (VoyageId) REFERENCES Voyage(VoyageId)
);

/**********************
DEPARTMENT
**********************/
CREATE TABLE Department (
    DepartmentId INT PRIMARY KEY,
    Name VARCHAR(100)
);

/**********************
ROLES
**********************/
CREATE TABLE Roles (
    RoleId INT PRIMARY KEY,
    DepartmentId INT,
    Name VARCHAR(100),
    FOREIGN KEY (DepartmentId) REFERENCES Department(DepartmentId)
);

/**********************
CREW MEMBERS
**********************/
CREATE TABLE CrewMembers (
    MemberId INT PRIMARY KEY,
    IndividualId INT,
    ShipId INT,
    DepartmentId INT,
    RoleId INT,
    StartDate DATE,
    EndDate DATE,
    FOREIGN KEY (IndividualId) REFERENCES Individuals(IndividualId),
    FOREIGN KEY (ShipId) REFERENCES Ships(ShipId),
    FOREIGN KEY (DepartmentId) REFERENCES Department(DepartmentId),
    FOREIGN KEY (RoleId) REFERENCES Roles(RoleId)
);
