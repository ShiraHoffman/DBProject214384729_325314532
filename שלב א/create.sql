CREATE TABLE Person
(
  PersonID INT NOT NULL,
  City VARCHAR2(50) NOT NULL,
  Street VARCHAR2(50) NOT NULL,
  House_number INT NOT NULL,
  First_name VARCHAR2(50) NOT NULL,
  Middle_name VARCHAR2(50),
  Last_name VARCHAR2(50) NOT NULL,
  Birth_date DATE NOT NULL,
  Mobile_number VARCHAR2(10) NOT NULL,
  Phone_number VARCHAR2(9),
  Blood_type VARCHAR2(3) NOT NULL,
  PRIMARY KEY (PersonID)
);

CREATE TABLE Donor
(
  DonorID INT NOT NULL,
  PRIMARY KEY (DonorID),
  FOREIGN KEY (DonorID) REFERENCES Person(PersonID)
);

CREATE TABLE Recipient
(
  Medical_condition VARCHAR2(20) NOT NULL,
  RecipientID INT NOT NULL,
  PRIMARY KEY (RecipientID),
  FOREIGN KEY (RecipientID) REFERENCES Person(PersonID)
);

CREATE TABLE DonationGroup
(
  DonationGroupName VARCHAR2(30) NOT NULL,
  DonationGroupSize INT NOT NULL,
  DonationGroupLocation VARCHAR2(40) NOT NULL,
  DonationGroupType VARCHAR2(20) NOT NULL,
  PRIMARY KEY (DonationGroupName)
);

CREATE TABLE Place
(
  PlaceCode INT NOT NULL,
  PRIMARY KEY (PlaceCode)
);

CREATE TABLE Ambulance
(
  License_number VARCHAR2(8) NOT NULL,
  PlaceCode INT NOT NULL,
  PRIMARY KEY (PlaceCode),
  FOREIGN KEY (PlaceCode) REFERENCES Place(PlaceCode)
);

CREATE TABLE Lab
(
  City VARCHAR2(20) NOT NULL,
  Street VARCHAR2(20) NOT NULL,
  House_number INT NOT NULL,
  PlaceCode INT NOT NULL,
  PRIMARY KEY (PlaceCode),
  FOREIGN KEY (PlaceCode) REFERENCES Place(PlaceCode)
);

CREATE TABLE Blood_unit
(
  Collection_date DATE NOT NULL,
  Expiration_date DATE NOT NULL,
  Liter INT NOT NULL,
  Unit_ID INT NOT NULL,
  Recived_date DATE,
  DonorID INT NOT NULL,
  RecipientID INT,
  DonationGroupName VARCHAR2(20),
  PlaceCode INT NOT NULL,
  PRIMARY KEY (Unit_ID),
  FOREIGN KEY (DonorID) REFERENCES Donor(DonorID),
  FOREIGN KEY (RecipientID) REFERENCES Recipient(RecipientID),
  FOREIGN KEY (DonationGroupName) REFERENCES DonationGroup(DonationGroupName),
  FOREIGN KEY (PlaceCode) REFERENCES Place(PlaceCode)
);
