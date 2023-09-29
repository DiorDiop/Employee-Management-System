-- Create tables
-- Employees Table

CREATE TABLE Employees (
    EmployeeID INT NOT NULL,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(100),
    Address VARCHAR(2500),
    HireDate DATE,
    DepartmentID INT NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL,
    JobTitle VARCHAR(100),
    SupervisorID INT NOT NULL,
    PRIMARY KEY (EmployeeID),
    FOREIGN KEY (SupervisorID) REFERENCES Employees(EmployeeID)
);

--Departements Table

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL,
    Description TEXT,
    ManagerID INT,
    Location VARCHAR(255),
    EstablishedDate DATE
);

-- Roles Table

CREATE TABLE Roles (
    RoleID INT PRIMARY KEY,
    RoleName VARCHAR(100) NOT NULL,
    Description TEXT,
    SalaryRange VARCHAR(50),
    Responsibilities TEXT
);

-- Employees Roles Table

CREATE TABLE EmployeeRoles (
    EmployeeRoleID INT PRIMARY KEY,
    EmployeeID INT,
    RoleID INT,
    StartDate DATE,
    EndDate DATE,
    
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (RoleID) REFERENCES Roles(RoleID)
);

-- Supervisors Table

CREATE TABLE Supervisors (
    SupervisorID INT PRIMARY KEY,
    EmployeeID INT NOT NULL,
    
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

--Add Elements on tables
-- Employees Table

-- Revenue Analysis and Forecasting Department

-- Employee 1
INSERT INTO [Employee Management System].[dbo].[Employees](EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (1, 'John', 'Doe', 'john.doe@example.com', '123-456-7890', '123 Main St', '2023-01-15', 1, 60000.00, 'Senior Revenue Analyst', 1);

-- Employee 2
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (2, 'Jane', 'Smith', 'jane.smith@example.com', '987-654-3210', '456 Oak Ave', '2023-02-01', 1, 55000.00, 'Revenue Analyst', 1);

-- Employee 3
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (3, 'Michael', 'Johnson', 'michael.johnson@example.com', '555-123-4567', '789 Elm Rd', '2023-02-15', 1, 58000.00, 'Revenue Analyst', 1);

-- Employee 4
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (4, 'Sarah', 'Williams', 'sarah.williams@example.com', '111-222-3333', '101 Pine Lane', '2023-03-05', 1, 54000.00, 'Revenue Analyst', 1);

-- Employee 5
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (5, 'Emily', 'Brown', 'emily.brown@example.com', '777-888-9999', '222 Cedar St', '2023-03-20', 1, 62000.00, 'Senior Revenue Analyst', 1);

-- Employee 6
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (6, 'David', 'Wilson', 'david.wilson@example.com', '333-444-5555', '333 Oak Lane', '2023-04-10', 1, 57000.00, 'Revenue Analyst', 1);

-- Employee 7
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (7, 'Mary', 'Anderson', 'mary.anderson@example.com', '888-999-0000', '444 Elm St', '2023-05-01', 1, 59000.00, 'Revenue Analyst', 1);

-- Employee 9
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (9, 'Jennifer', 'Lee', 'jennifer.lee@example.com', '777-123-4567', '666 Pine Ave', '2023-07-10', 1, 53000.00, 'Revenue Analyst', 1);

-- Employee 10
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (10, 'Daniel', 'Clark', 'daniel.clark@example.com', '555-666-7777', '777 Cedar Rd', '2023-08-05', 1, 54000.00, 'Revenue Analyst', 1);

-- Employee 8
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (8, 'Robert', 'Harris', 'robert.harris@example.com', '123-987-6543', '555 Maple Rd', '2023-06-15', 1, 56000.00, 'Revenue Analyst', 1);


-- Sales Operations Department

-- Employee 11
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (11, 'Alex', 'Turner', 'alex.turner@example.com', '123-456-7890', '123 Oak St', '2023-01-15', 2, 65000.00, 'Sales Operations Manager', 2);

-- Employee 12
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (12, 'Laura', 'Parker', 'laura.parker@example.com', '987-654-3210', '456 Elm Ave', '2023-02-01', 2, 55000.00, 'Sales Coordinator', 2);

-- Employee 13
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (13, 'Ryan', 'Williams', 'ryan.williams@example.com', '555-123-4567', '789 Pine Rd', '2023-02-15', 2, 58000.00, 'Sales Coordinator', 2);

-- Employee 14
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (14, 'Emma', 'Davis', 'emma.davis@example.com', '111-222-3333', '101 Maple Lane', '2023-03-05', 2, 54000.00, 'Sales Process Analyst', 2);

-- Employee 15
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (15, 'Michael', 'Anderson', 'michael.anderson@example.com', '777-888-9999', '222 Cedar St', '2023-03-20', 2, 62000.00, 'Sales Process Analyst', 2);

-- Employee 16
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (16, 'Olivia', 'Harris', 'olivia.harris@example.com', '333-444-5555', '333 Pine Rd', '2023-04-10', 2, 57000.00, 'Sales Support Specialist', 2);

-- Employee 17
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (17, 'William', 'Turner', 'william.turner@example.com', '888-999-0000', '444 Elm Ave', '2023-05-01', 2, 59000.00, 'Sales Support Specialist', 2);

-- Employee 18
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (18, 'Sophia', 'Lewis', 'sophia.lewis@example.com', '123-987-6543', '555 Oak St', '2023-06-15', 2, 56000.00, 'CRM Administrator', 2);

-- Employee 19
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (19, 'Liam', 'Clark', 'liam.clark@example.com', '777-123-4567', '666 Cedar Lane', '2023-07-10', 2, 53000.00, 'CRM Administrator', 2);

-- Employee 20
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (20, 'Mia', 'Martin', 'mia.martin@example.com', '555-666-7777', '777 Elm Rd', '2023-08-05', 2, 54000.00, 'Sales Trainer', 2);


-- Financial Reporting and Compliance Department

-- Employee 21
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (21, 'Daniel', 'Brown', 'daniel.brown@example.com', '123-456-7890', '123 Elm St', '2023-01-15', 3, 70000.00, 'Financial Reporting Manager', 3);

-- Employee 22
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (22, 'Sophia', 'Smith', 'sophia.smith@example.com', '987-654-3210', '456 Maple Ave', '2023-02-01', 3, 55000.00, 'Financial Analyst', 3);

-- Employee 23
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (23, 'Ethan', 'Jones', 'ethan.jones@example.com', '555-123-4567', '789 Pine Rd', '2023-02-15', 3, 58000.00, 'Financial Analyst', 3);

-- Employee 24
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (24, 'Olivia', 'Davis', 'olivia.davis@example.com', '111-222-3333', '101 Cedar Lane', '2023-03-05', 3, 54000.00, 'Compliance Specialist', 3);

-- Employee 25
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (25, 'James', 'Williams', 'james.williams@example.com', '777-888-9999', '222 Oak St', '2023-03-20', 3, 62000.00, 'Compliance Specialist', 3);

-- Employee 26
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (26, 'Ava', 'Martin', 'ava.martin@example.com', '333-444-5555', '333 Maple Rd', '2023-04-10', 3, 57000.00, 'Audit Coordinator', 3);

-- Employee 27
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (27, 'William', 'Taylor', 'william.taylor@example.com', '888-999-0000', '444 Pine Ave', '2023-05-01', 3, 59000.00, 'Tax Analyst', 3);

-- Employee 28
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (28, 'Emma', 'Anderson', 'emma.anderson@example.com', '123-987-6543', '555 Cedar Rd', '2023-06-15', 3, 56000.00, 'Financial Systems Analyst', 3);

-- Employee 29
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (29, 'Liam', 'Clark', 'liam.clark@example.com', '777-123-4567', '666 Oak Ave', '2023-07-10', 3, 53000.00, 'Cost Accountant', 3);

-- Employee 30
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (30, 'Avery', 'White', 'avery.white@example.com', '555-666-7777', '777 Maple Lane', '2023-08-05', 3, 54000.00, 'Internal Controls Specialist', 3);


-- Client Relations and Account Management Department

-- Employee 31
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (31, 'Sophia', 'Brown', 'sophia.brown@example.com', '123-456-7890', '123 Pine St', '2023-01-15', 4, 62000.00, 'Account Manager', 4);

-- Employee 32
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (32, 'Jackson', 'Smith', 'jackson.smith@example.com', '987-654-3210', '456 Cedar Ave', '2023-02-01', 4, 55000.00, 'Account Manager', 4);

-- Employee 33
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (33, 'Liam', 'Johnson', 'liam.johnson@example.com', '555-123-4567', '789 Oak Rd', '2023-02-15', 4, 58000.00, 'Customer Success Manager', 4);

-- Employee 34
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (34, 'Emma', 'Davis', 'emma.davis@example.com', '111-222-3333', '101 Cedar Lane', '2023-03-05', 4, 54000.00, 'Customer Success Manager', 4);

-- Employee 35
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (35, 'William', 'Anderson', 'william.anderson@example.com', '777-888-9999', '222 Pine St', '2023-03-20', 4, 62000.00, 'Upsell/Cross-sell Specialist', 4);

-- Employee 36
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (36, 'Olivia', 'Harris', 'olivia.harris@example.com', '333-444-5555', '333 Oak Ave', '2023-04-10', 4, 57000.00, 'Client Onboarding Coordinator', 4);

-- Employee 37
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (37, 'James', 'Wilson', 'james.wilson@example.com', '888-999-0000', '444 Elm Rd', '2023-05-01', 4, 59000.00, 'Client Support Representative', 4);

-- Employee 38
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (38, 'Ava', 'Taylor', 'ava.taylor@example.com', '123-987-6543', '555 Cedar Ave', '2023-06-15', 4, 56000.00, 'Feedback Analyst', 4);

-- Employee 39
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (39, 'Ethan', 'Lewis', 'ethan.lewis@example.com', '777-123-4567', '666 Pine Rd', '2023-07-10', 4, 53000.00, 'Account Renewal Specialist', 4);

-- Employee 40
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (40, 'Olivia', 'Clark', 'olivia.clark@example.com', '555-666-7777', '777 Maple Lane', '2023-08-05', 4, 54000.00, 'Client Data Analyst', 4);

-- Data Analytics and Business Intelligence Department

-- Employee 41
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (41, 'Ella', 'Johnson', 'ella.johnson@example.com', '123-456-7890', '123 Cedar St', '2023-01-15', 5, 70000.00, 'Data Analytics Manager', 5);

-- Employee 42
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (42, 'Henry', 'Smith', 'henry.smith@example.com', '987-654-3210', '456 Pine Ave', '2023-02-01', 5, 55000.00, 'Data Analyst', 5);

-- Employee 43
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (43, 'Mia', 'Williams', 'mia.williams@example.com', '555-123-4567', '789 Elm Rd', '2023-02-15', 5, 58000.00, 'Data Analyst', 5);

-- Employee 44
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (44, 'Liam', 'Davis', 'liam.davis@example.com', '111-222-3333', '101 Oak Lane', '2023-03-05', 5, 54000.00, 'Business Intelligence Analyst', 5);

-- Employee 45
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (45, 'Olivia', 'Brown', 'olivia.brown@example.com', '777-888-9999', '222 Cedar Ave', '2023-03-20', 5, 62000.00, 'Business Intelligence Analyst', 5);

-- Employee 46
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (46, 'William', 'Harris', 'william.harris@example.com', '333-444-5555', '333 Elm St', '2023-04-10', 5, 57000.00, 'Data Quality Analyst', 5);

-- Employee 47
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (47, 'Emma', 'Anderson', 'emma.anderson@example.com', '888-999-0000', '444 Pine Rd', '2023-05-01', 5, 59000.00, 'Data Visualization Specialist', 5);

-- Employee 48
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (48, 'James', 'Clark', 'james.clark@example.com', '123-987-6543', '555 Maple Ave', '2023-06-15', 5, 56000.00, 'Data Integration Specialist', 5);

-- Employee 49
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (49, 'Ava', 'Taylor', 'ava.taylor@example.com', '777-123-4567', '666 Oak St', '2023-07-10', 5, 53000.00, 'Data Governance Coordinator', 5);

-- Employee 50
INSERT INTO [Employee Management System].[dbo].[Employees] (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (50, 'Ethan', 'Lewis', 'ethan.lewis@example.com', '555-666-7777', '777 Cedar Lane', '2023-08-05', 5, 54000.00, 'Data Engineer', 5);



-- Inserting Departments


INSERT INTO [Employee Management System].[dbo].[Departments] (DepartmentID, DepartmentName, Description, ManagerID, Location, EstablishedDate)
VALUES (1, 'Revenue Analysis and Forecasting', 'Responsible for analyzing revenue data and forecasting future revenue trends.', 1, 'New York', '2022-01-01');

INSERT INTO [Employee Management System].[dbo].[Departments] (DepartmentID, DepartmentName, Description, ManagerID, Location, EstablishedDate)
VALUES (2, 'Sales Operations', 'Manages sales processes, sales support, and customer relationship management.', 2, 'Los Angeles', '2022-01-01');

INSERT INTO [Employee Management System].[dbo].[Departments] (DepartmentID, DepartmentName, Description, ManagerID, Location, EstablishedDate)
VALUES (3, 'Financial Reporting and Compliance', 'Handles financial reporting, compliance, and auditing activities.', 3, 'Chicago', '2022-01-01');

INSERT INTO [Employee Management System].[dbo].[Departments] (DepartmentID, DepartmentName, Description, ManagerID, Location, EstablishedDate)
VALUES (4, 'Client Relations and Account Management', 'Manages client accounts, customer success, and client relations.', 4, 'San Francisco', '2022-01-01');

INSERT INTO [Employee Management System].[dbo].[Departments] (DepartmentID, DepartmentName, Description, ManagerID, Location, EstablishedDate)
VALUES (5, 'Data Analytics and Business Intelligence', 'Responsible for data analysis, business intelligence, and data management.', 5, 'Seattle', '2022-01-01');


