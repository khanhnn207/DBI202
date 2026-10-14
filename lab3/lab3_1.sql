CREATE TABLE Category (
    CategoryID INT PRIMARY KEY,
    Name NVARCHAR(100),
    Description NVARCHAR(200)
);

CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    Productname NVARCHAR(150),
    Price DECIMAL(12, 2),
    CategoryID INT FOREIGN KEY REFERENCES Category(CategoryID)
);

CREATE TABLE Supplier (
    SupplierID VARCHAR(30) PRIMARY KEY,
    SupplierName NVARCHAR(100),
    Level INT
);

CREATE TABLE Product_Supplier (
    ProductID INT FOREIGN KEY REFERENCES Product(ProductID),
    SupplierID VARCHAR(30) FOREIGN KEY REFERENCES Supplier(SupplierID),
    PRIMARY KEY (ProductID, SupplierID)
);

SELECT * FROM Product_Supplier;