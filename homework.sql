CREATE TABLE Customers (
    ID INT PRIMARY KEY IDENTITY,
    Name VARCHAR(100),
    Industry VARCHAR(100),
    ContactPersonID INT,
    PhoneNumber VARCHAR(12),
    Address VARCHAR(255),
    City VARCHAR(255),
    Zip VARCHAR(5)
);

CREATE TABLE CustomerProjects (
    CustomerID INT,
    ProjectID INT,
    Feedback TEXT,
    CONSTRAINT FK_CustomerProjects_Customers FOREIGN KEY (CustomerID)
        REFERENCES Customers (ID),
    CONSTRAINT FK_CustomerProjects_Projects FOREIGN KEY (ProjectID)
        REFERENCES Projects (ID)
);

CREATE TABLE ContactPerson (
    ID INT PRIMARY KEY IDENTITY,
    Name VARCHAR(100),
    Role VARCHAR(100)
);

INSERT INTO Customers (Name, Industry, ContactPersonID, PhoneNumber, Address, City, Zip)
VALUES 
('Zydus Cadila', 'Pharma', 133, '555-55-5555', '1, Landing Street', 'York', '23456'),
('HDFC', 'Finance', 146, '222-22-2222', '2, Times Square', 'London', '84221'),
('ICICI', 'Finance', 122, '444-44-4444', '3, Garden Street', 'Brussels', '53864');

INSERT INTO CustomerProjects (CustomerID, ProjectID, Feedback)
VALUES
(1, 2455, 'Amazing Work!'),
(2, 9855, 'Nice Job!'),
(2, 4924, 'Fantastic!'),
(3, 3965, 'Well done.');

INSERT INTO ContactPerson (ID, Name, Role)
VALUES
(133, 'Dave', 'HoD'),
(146, 'Mark', 'Ops Lead'),
(122, 'Peter', 'Analyst');