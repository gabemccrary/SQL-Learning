/**********************
PLANET
**********************/
CREATE TABLE Planet (
    planetID INT IDENTITY (1,1) PRIMARY KEY,
    name NVARCHAR(50),
    star NVARCHAR(50),
    habitable BIT,
    logDate SMALLDATETIME DEFAULT GETDATE(),
    description VARCHAR(255)
);

/**********************
SHIP
**********************/
CREATE TABLE Ship (
    shipID INT IDENTITY (1,1) PRIMARY KEY,
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    shipClass VARCHAR(10),
    capacity INT,
    startYear INT,
    endYear INT
);

/**********************
VOYAGE
**********************/
CREATE TABLE Voyage (
    voyageID INT IDENTITY (1,1) PRIMARY KEY,
    shipID INT,
    originPlanetID INT,
    destinationPlanetID INT,
    startDate DATE,
    endDate DATE,
    purpose VARCHAR(255),
    projectedCost MONEY,
    finalCost MONEY,
    FOREIGN KEY (shipID) REFERENCES Ship(shipID),
    FOREIGN KEY (originPlanetID) REFERENCES Planet(planetID),
    FOREIGN KEY (destinationPlanetID) REFERENCES Planet(planetID)
);

/**********************
BIOTYPE
**********************/
CREATE TABLE Biotype (
    biotypeID INT IDENTITY (1,1) PRIMARY KEY,
    homePlanetID INT,
    name VARCHAR(100),
    sapient BIT,
    averageLifespan INT,
    description VARCHAR(255),
    firstContact DATE,
    FOREIGN KEY (homePlanetId) REFERENCES Planet(planetId)
)

/**********************
INDIVIDUAL
**********************/
CREATE TABLE Individual (
    individualID INT IDENTITY (1,1) PRIMARY KEY,
    biotypeID INT,
    homePlanetID INT,
    firstName NVARCHAR(50),
    lastName NVARCHAR(50),
    earthDOB DATE,
    FOREIGN KEY (bioTypeID) REFERENCES Biotype(biotypeID),
    FOREIGN KEY (homePlanetID) REFERENCES Planet(planetID)
);

/**********************
ADDRESS
**********************/
CREATE TABLE Address (
    addressID INT IDENTITY (1,1) PRIMARY KEY,
    number INT,
    street NVARCHAR(50),
    city NVARCHAR(50),
    state NVARCHAR(50),
    nation NVARCHAR(50),
    planet NVARCHAR(50)
);

/**********************
CONTACT
**********************/
CREATE TABLE Contact (
    contactID INT IDENTITY (1,1) PRIMARY KEY,
    individualID INT,
    addressID INT,
    emailAddress NVARCHAR(50),
    phoneNumber NVARCHAR(50),
    FOREIGN KEY (individualID) REFERENCES Individual(individualID),
    FOREIGN KEY (addressID) REFERENCES Address(addressID)
);

/**********************
EVALUATION
**********************/
CREATE TABLE Evaluation (
    evaluationID INT IDENTITY (1,1) PRIMARY KEY,
    individualID INT NOT NULL,
    evaluatorID INT NOT NULL,
    evalDate DATE,
    score INT,
    notes VARCHAR(255),
    FOREIGN KEY (individualID) REFERENCES Individual(individualID),
    FOREIGN KEY (evaluatorID) REFERENCES Individual(individualID)
);

/**********************
DISCOVERY
**********************/
CREATE TABLE Discovery (
    discoveryID INT IDENTITY (1,1) PRIMARY KEY,
    loggerID INT,
    voyageID INT,
    discoveryType NVARCHAR(50),
    description VARCHAR(255),
    logDate SMALLDATETIME DEFAULT GETDATE(),
    FOREIGN KEY (loggerID) REFERENCES Individual(individualID),
    FOREIGN KEY (voyageID) REFERENCES Voyage(voyageID)
);

/**********************
CONFLICT
**********************/
CREATE TABLE Conflict (
    conflictID INT IDENTITY (1,1) PRIMARY KEY,
    voyageID INT,
    conflictName VARCHAR(50),
    startDate DATE,
    endDate DATE,
    description VARCHAR(255),
    outcome VARCHAR(50),
    FOREIGN KEY (voyageID) REFERENCES Voyage(voyageID)
);

/**********************
DEPARTMENT
**********************/
CREATE TABLE Department (
    departmentID INT IDENTITY (1,1) PRIMARY KEY,
    name VARCHAR(100)
);

/**********************
ROLE
**********************/
CREATE TABLE Role (
    roleID INT IDENTITY (1,1) PRIMARY KEY,
    departmentID INT,
    name VARCHAR(50),
    FOREIGN KEY (departmentID) REFERENCES Department(departmentID)
);

/**********************
CREW MEMBER
**********************/
CREATE TABLE CrewMember (
    memberID INT IDENTITY (1000,1) PRIMARY KEY,
    individualID INT,
    shipID INT,
    departmentID INT,
    roleID INT,
    startDate DATE,
    endDate DATE,
    FOREIGN KEY (individualID) REFERENCES Individual(individualID),
    FOREIGN KEY (shipID) REFERENCES Ship(shipID),
    FOREIGN KEY (departmentID) REFERENCES Department(departmentID),
    FOREIGN KEY (roleID) REFERENCES Role(roleID)
);



