CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    -- Additional customer fields as needed
)
CREATE TABLE Articles (
    ArticleID INT PRIMARY KEY,
    ArticleName VARCHAR(100),
    Price DECIMAL(10, 2),
    -- Additional article fields as needed
)
CREATE TABLE SalesInvoices (
    InvoiceID INT PRIMARY KEY,
    InvoiceDate DATE,
    CustomerID INT,
    -- Additional invoice fields as needed
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
)
CREATE TABLE SalesInvoiceLineItems (
    LineItemID INT PRIMARY KEY,
    InvoiceID INT,
    ArticleID INT,
    Quantity INT,
    Price DECIMAL(10, 2),
    -- Additional line item fields as needed
    FOREIGN KEY (InvoiceID) REFERENCES SalesInvoices(InvoiceID),
    FOREIGN KEY (ArticleID) REFERENCES Articles(ArticleID)
)