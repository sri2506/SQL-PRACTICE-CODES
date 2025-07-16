select * from Employeess;
select * from Projects1;
select * from clients;
select * from Departments;
select * from Tasks;

SELECT Projects1.ProjectName,Employeess.EmpName,Departments.DeptName
FROM Projects1
JOIN Employeess ON Projects1.EmpID = Employeess.EmpID
JOIN Departments ON Employeess.DeptID = Departments.DeptID;


--create a new table Use all type of constrains

CREATE TABLE AssignmentRecord(
    AssignmentID INT PRIMARY KEY,
    EmpID INT,
    ReviewerName VARCHAR(50) NOT NULL,
    AssignmentType VARCHAR(50),
    AssignmentDate DATE DEFAULT Cast (getdate () as date)
);

drop table AssignmentRecord;

INSERT INTO AssignmentRecord (AssignmentID, EmpID,ReviewerName, AssignmentType)VALUES 

(1, 1, 'Alice Johnson','Technical Report'),
(2, 2,  'Bob Smith','Market Analysis'),
(3, 3,'Carol Lee', 'Product Design'),
(4, 4,'David Kim', 'Code Review'),
(5, 5, 'Eva Brown', 'UI Testing'),
(6,  6,'Frank Green','Security Audit'),
(7, 7,'Grace Hall', 'Training'),
(8, 8, 'Henry White', 'Deployment Checklist');

select * from AssignmentRecord;

CREATE TABLE AssignmentRecord1(
    AssignmentID INT PRIMARY KEY,
    EmpID INT,
    ReviewerName VARCHAR(50) NOT NULL,
    AssignmentType VARCHAR(50),
    AssignmentDate DATE DEFAULT Cast (getdate () as date)
);

INSERT INTO AssignmentRecord1 (AssignmentID, ReviewerName, AssignmentType)VALUES 
(1, 'Alice Johnson', 'Technical Report'),
(2, 'Bob Smith', 'Market Analysis'),
(3, 'Carol Lee', 'Product Design'),
(4, 'David Kim', 'Code Review'),
(5, 'Eva Brown', 'UI Testing'),
(6, 'Frank Green', 'Security Audit'),
(7, 'Grace Hall', 'Training'),
(8, 'Henry White', 'Deployment Checklist');


ALTER TABLE AssignmentRecord
ADD  Remarks VARCHAR(100);

ALTER TABLE AssignmentRecord 
ALTER COLUMN ReviewerName VARCHAR(100);

ALTER TABLE AssignmentRecord
 DROP COLUMN Remarks;

 -- Add a Foreign Key 

 ALTER TABLE AssignmentRecord
 ADD CONSTRAINT fk_EmpID
 FOREIGN KEY (EmpID)
 REFERENCES Employeess(EmpID)

  --Add a Unique Constraint

ALTER TABLE AssignmentRecord
ADD CONSTRAINT unique_AssignmentType
UNIQUE (AssignmentType);

--Rename a Table

ALTER TABLE EmployeeAssignmentRecord
RENAME TO cdsk ;


exec sp_rename 'EmployeeAssignmentRecord','AssignmentRecord';

select * from AssignmentRecord

select * from EmployeeAssignmentRecord;


--Remove a Constraint

ALTER TABLE EmployeeAssignmentRecord
DROP CONSTRAINT Unique_AssignmentType;
