-- Cloud Kitchen Analytics
-- Database: CloudKitchenAnalytics
-- Purpose: Table creation (DDL)

CREATE TABLE Locations (
    LocationID INT IDENTITY(1,1) PRIMARY KEY,
    LocationName VARCHAR(50) NOT NULL
);

CREATE TABLE Channels (
    ChannelID INT IDENTITY(1,1) PRIMARY KEY,
    ChannelName VARCHAR(50) NOT NULL
);

CREATE TABLE Menu_Items (
    MenuItemID INT IDENTITY(1,1) PRIMARY KEY,
    ItemName VARCHAR(100) NOT NULL,
    Category VARCHAR(50) NOT NULL,
    PrepTimeMinutes INT NOT NULL,
    IsActive BIT NOT NULL
);

CREATE TABLE Customers (
    CustomerID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerName VARCHAR(100),
    FirstOrderDate DATE
);

CREATE TABLE Orders (
    OrderID INT IDENTITY(1,1) PRIMARY KEY,
    OrderDateTime DATETIME NOT NULL,
    LocationID INT NOT NULL,
    ChannelID INT NOT NULL,
    CustomerID INT NOT NULL,
    OrderStatus VARCHAR(20) NOT NULL,
    PromisedDeliveryTime DATETIME NOT NULL,
    ActualDeliveryTime DATETIME NULL,
    TotalOrderValue DECIMAL(10,2) NOT NULL
);

CREATE TABLE Order_Items (
    OrderItemID INT IDENTITY(1,1) PRIMARY KEY,
    OrderID INT NOT NULL,
    MenuItemID INT NOT NULL,
    Quantity INT NOT NULL,
    ItemPrice DECIMAL(10,2) NOT NULL
);

CREATE TABLE Delivery_Performance (
    OrderID INT PRIMARY KEY,
    KitchenPrepTime INT NOT NULL,
    RiderWaitTime INT NOT NULL,
    DeliveryTimeMinutes INT NOT NULL,
    OnTimeFlag BIT NOT NULL
);
