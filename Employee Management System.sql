-- Create tables
-- Employees Table

CREATE TABLE EmployeeManagement (
    EmployeeID INT NOT NULL,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone BIGINT NOT NULL,
    Address VARCHAR(2500),
    HireDate DATE,
    DepartmentID INT NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL,
    JobTitle VARCHAR(100),
    SupervisorID INT NOT NULL,
    PRIMARY KEY (EmployeeID),
    FOREIGN KEY (SupervisorID) REFERENCES EmployeeManagement(EmployeeID)
);

--Departements Table

CREATE TABLE DepartmentManagement (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL,
    Description TEXT,
    ManagerID INT,
    Location VARCHAR(255),
    EstablishedDate DATE
);

-- Roles Table

CREATE TABLE RoleManagement (
    RoleID INT PRIMARY KEY,
    RoleName VARCHAR(100) NOT NULL,
    Description TEXT,
    SalaryRange VARCHAR(50),
    Responsibilities TEXT
);

-- Employees Roles Table

CREATE TABLE EmployeeRoleManagement (
    EmployeeRoleID INT PRIMARY KEY,
    EmployeeID INT,
    RoleID INT,
    StartDate DATE,
    EndDate DATE,
    
    FOREIGN KEY (EmployeeID) REFERENCES EmployeeManagement(EmployeeID),
    FOREIGN KEY (RoleID) REFERENCES RoleManagement(RoleID)
);

-- Supervisors Table

CREATE TABLE SupervisorManagement (
    SupervisorID INT PRIMARY KEY,
    EmployeeID INT NOT NULL,
    
    FOREIGN KEY (EmployeeID) REFERENCES EmployeeManagement(EmployeeID)
);


--Add Elements on tables
-- Employees Table

-- Example 1:
INSERT INTO EmployeeManagement (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (1, 'John', 'Doe', 'john.doe@example.com', 123-456-7890, '123 Main St', '2023-01-15', 1, 60000.00, 'Software Engineer', 1);

-- Example 2:
INSERT INTO EmployeeManagement (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (2, 'Jane', 'Smith', 'jane.smith@example.com', 987-654-3210, '456 Elm St', '2023-02-10', 2, 55000.00, 'Marketing Specialist', 2);

-- Example 3:
INSERT INTO EmployeeManagement (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (4, 'Jane', 'Smith', 'jane.smith@example.com', 987-654-3210, '456 Elm St', '2023-02-10', 1, 55000.00, 'Software Engineer', 3);

-- Example :
INSERT INTO EmployeeManagement (EmployeeID, FirstName, LastName, Email, Phone, Address, HireDate, DepartmentID, Salary, JobTitle, SupervisorID)
VALUES (2, 'Jane', 'Smith', 'jane.smith@example.com', 987-654-3210, '456 Elm St', '2023-02-10', 2, 55000.00, 'Marketing Specialist', 2);
