/**********************
PLANET
**********************/
CREATE TABLE Planet (
    planetID INT PRIMARY KEY,
    planetName VARCHAR(100),
    starSystem VARCHAR(100),
    inhabited BIT,
    logDate SMALLDATETIME,
    composition VARCHAR(100)
);

/**********************
KINDRED
**********************/
CREATE TABLE Kindred (
    kindredID INT PRIMARY KEY,
    homePlanetID INT,
    name VARCHAR(100),
    humanoID BIT,
    sapience BIT,
    averageLifespan INT,
    description VARCHAR(255),
    firstContact DATE,
    FOREIGN KEY (homePlanetID) REFERENCES Planet(planetID)
);

/**********************
SHIP
**********************/
CREATE TABLE Ship (
    shipID INT PRIMARY KEY,
    manufacturer VARCHAR(100),
    model VARCHAR(100),
    shipClass VARCHAR(10),
    capacity INT,
    startYear INT,
    endYear INT
);

/**********************
ADDRESS
**********************/
CREATE TABLE Address (
    addressID INT PRIMARY KEY,
    number INT,
    street NVARCHAR(50),
    city NVARCHAR(100),
    state NVARCHAR(50),
    nation NVARCHAR(50),
    planet NVARCHAR(50)
);

/**********************
INDIVIDUAL
**********************/
CREATE TABLE Individual (
    individualID INT PRIMARY KEY,
    kindredID INT,
    homePlanetID INT,
    firstName NVARCHAR(50),
    lastName NVARCHAR(50),
    earthDOB DATE,
    FOREIGN KEY (kindredID) REFERENCES Kindred(kindredID),
    FOREIGN KEY (homePlanetID) REFERENCES Planet(planetID)
);

/**********************
CONTACT
**********************/
CREATE TABLE Contact (
    contactID INT PRIMARY KEY,
    individualID INT,
    addressID INT,
    emailAddress NVARCHAR(50),
    phoneNumber NVARCHAR(50),
    FOREIGN KEY (individualID) REFERENCES Individual(individualID),
    FOREIGN KEY (addressID) REFERENCES Address(addressID)
);

/**********************
VOYAGE
**********************/
CREATE TABLE Voyage (
    voyageID INT PRIMARY KEY,
    shipID INT,
    originPlanetID INT,
    destinationPlanetID INT,
    startDate DATE,
    endDate DATE,
    purpose VARCHAR(255),
    projectedCost MONEY,
    finalCost MONEY,
    FOREIGN KEY (shipID) REFERENCES Ships(shipID),
    FOREIGN KEY (originPlanetID) REFERENCES Planet(planetID),
    FOREIGN KEY (destinationPlanetID) REFERENCES Planet(planetID)
);

/**********************
EVALUATION
**********************/
CREATE TABLE Evaluation (
    evaluationID INT PRIMARY KEY,
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
    discoveryID INT PRIMARY KEY,
    loggerID INT,
    voyageID INT,
    discoveryType NVARCHAR(50),
    description VARCHAR(255),
    logDate SMALLDATETIME DEFAULT GETDATE(),
    FOREIGN KEY loggerID) REFERENCES Individual(individualID),
    FOREIGN KEY (voyageID) REFERENCES Voyage(voyageID)
);

/**********************
CONFLICT
**********************/
CREATE TABLE Conflict (
    conflictID INT PRIMARY KEY,
    voyageID INT,
    conflictName VARCHAR(100),
    startDate DATE,
    endDate DATE,
    description VARCHAR(255),
    outcome VARCHAR(100),
    FOREIGN KEY (voyageID) REFERENCES Voyage(voyageID)
);

/**********************
DEPARTMENT
**********************/
CREATE TABLE Department (
    departmentID INT PRIMARY KEY,
    name VARCHAR(100)
);

/**********************
ROLE
**********************/
CREATE TABLE Role (
    roleID INT PRIMARY KEY,
    departmentID INT,
    name VARCHAR(100),
    FOREIGN KEY (departmentID) REFERENCES Department(departmentID)
);

/**********************
CREW MEMBER
**********************/
CREATE TABLE CrewMember (
    memberID INT PRIMARY KEY,
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

