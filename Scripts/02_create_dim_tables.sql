CREATE TABLE DW.DimDate (
    DateKey INT PRIMARY KEY,
    FullDate DATE,
    Year INT,
    Quarter INT,
    Month INT,
    MonthName NVARCHAR(20),
    Day INT
);

CREATE TABLE DW.DimProduct (
    ProductKey INT PRIMARY KEY,
    ProductName NVARCHAR(100),
    Color NVARCHAR(30),
    Size NVARCHAR(10),
    ProductCategory NVARCHAR(100)
);

CREATE TABLE DW.DimCustomer (
    CustomerKey INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    FullName AS (FirstName + ' ' + LastName),
    EmailAddress NVARCHAR(100),
    Phone NVARCHAR(30),
    Country NVARCHAR(50),
    State NVARCHAR(50),
    City NVARCHAR(50)
);

CREATE TABLE DW.DimSalesTerritory (
    TerritoryKey INT PRIMARY KEY,
    TerritoryGroup NVARCHAR(50),
    CountryRegion NVARCHAR(50),
    TerritoryName NVARCHAR(50)
);