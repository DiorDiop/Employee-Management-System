CREATE TABLE Employees_Table(
	EmployeeID INT NOT NULL,
	FirstName CHAR(50),
    LastName CHAR(50),
	Email CHAR(50),
	Phone BIGINT NOT NULL,
	Address VARCHAR(2500),
	HireDate DATE,
	DepartmentID INT NOT NULL,
	Salary INT NOT NULL,
	JobTitle VARCHAR(2500),
	SupervisorID INT NOT NULL,
	PRIMARY KEY (EmployeeID)
);

SELECT * FROM Employees_Table