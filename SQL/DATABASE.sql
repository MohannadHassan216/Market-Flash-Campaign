-- Create the database
CREATE DATABASE MarketFlashDB;
USE MarketFlashDB;

-- Create Client table
CREATE TABLE Client (
    ClientId VARCHAR(20) PRIMARY KEY,
    ClientName VARCHAR(200) NOT NULL,
    ClientAddress VARCHAR(200) NOT NULL,
    Email VARCHAR(20) UNIQUE NOT NULL,
    Phone VARCHAR(20) NOT NULL,
    ContactPerson VARCHAR(20) NOT NULL
);

-- Create Channels table
CREATE TABLE Channels (
    ChannelId VARCHAR(20) PRIMARY KEY,
    ChannelName VARCHAR(20),
    ChannelDescription VARCHAR(20)
);

-- Create Locations table
CREATE TABLE Locations (
    LocationId VARCHAR(20) PRIMARY KEY,
    LocationName VARCHAR(20) NOT NULL,
    LocationDescription VARCHAR(20)
);

-- Create Employees table
CREATE TABLE Employees (
    EmpId VARCHAR(20) PRIMARY KEY,
    FName VARCHAR(20) NOT NULL,
    LName VARCHAR(20) NOT NULL,
    Address VARCHAR(20) NOT NULL,
    Email VARCHAR(20) NOT NULL,
    Phone VARCHAR(20) NOT NULL,
    Supervisor_ID VARCHAR(20),
    DeptId VARCHAR(20),
    FOREIGN KEY (Supervisor_ID) REFERENCES Employees(EmpId),
    FOREIGN KEY (DeptId) REFERENCES Departments(DeptId)
);

-- Create Campaigns table
CREATE TABLE Campaigns (
    CampaignId VARCHAR(20) PRIMARY KEY,
    StartDate DATETIME NOT NULL,
    EndDate DATETIME NOT NULL,
    ChannelId VARCHAR(20) NOT NULL,
    ClientId VARCHAR(20) NOT NULL,
    Audience VARCHAR(20) NOT NULL,
    Likes INT NOT NULL,
    Clicks INT NOT NULL,
    Conversions INT NOT NULL,
    Expenses FLOAT NOT NULL,
    LocationId VARCHAR(20) NOT NULL,
    Sales FLOAT,
    CampaignTypeId VARCHAR(20) NOT NULL,
    EmpId VARCHAR(20) NOT NULL,
    FOREIGN KEY (ChannelId) REFERENCES Channels(ChannelId),
    FOREIGN KEY (ClientId) REFERENCES Client(ClientId),
    FOREIGN KEY (LocationId) REFERENCES Locations(LocationId),
    FOREIGN KEY (CampaignTypeId) REFERENCES Campaign_Types(TypeId),
    FOREIGN KEY (EmpId) REFERENCES Employees(EmpId)
);

-- Create Campaign_Types table
CREATE TABLE Campaign_Types (
    TypeId VARCHAR(20) PRIMARY KEY,
    TypeName VARCHAR(20) NOT NULL,
    TypeDescription VARCHAR(20)
);

-- Create Departments table
CREATE TABLE Departments (
    DeptId VARCHAR(20) PRIMARY KEY,
    Department VARCHAR(20) NOT NULL,
    Description VARCHAR(20)
);


