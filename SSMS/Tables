-- 1. Country Table
CREATE TABLE Country (
    CountryId INT PRIMARY KEY,
    CountryName NVARCHAR(100) NOT NULL
);

-- 2. States Table
CREATE TABLE States (
    StatesId INT PRIMARY KEY,
    StatesName NVARCHAR(100) NOT NULL,
    CountryId INT FOREIGN KEY REFERENCES Country(CountryId)
);

-- 3. Customer Table
CREATE TABLE Customer (
    CustomerCode INT PRIMARY KEY,
    CustomerName NVARCHAR(100) NOT NULL,
    CustomerAmount DECIMAL(10,2),
    SalesDate DATE
);

-- 4. Product Table
CREATE TABLE Product (
    ProductId INT PRIMARY KEY,
    ProductName NVARCHAR(100) NOT NULL
);

-- 5. SalesPerson Table
CREATE TABLE SalesPerson (
    PersonId INT PRIMARY KEY,
    PersonName NVARCHAR(100) NOT NULL
);

-- 6. FactCustomer Table (Fact table in star schema)
CREATE TABLE FactCustomer (
    FactId INT PRIMARY KEY,
    CustomerCode INT FOREIGN KEY REFERENCES Customer(CustomerCode),
    CustomerName NVARCHAR(100),
    CustomerAmount DECIMAL(10,2),
    SalesDate DATE,
    CountryId INT FOREIGN KEY REFERENCES Country(CountryId),
    StatesId INT FOREIGN KEY REFERENCES States(StatesId),
    ProductId INT FOREIGN KEY REFERENCES Product(ProductId),
    PersonId INT FOREIGN KEY REFERENCES SalesPerson(PersonId)
);
