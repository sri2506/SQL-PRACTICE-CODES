CREATE TABLE Departments1(
    DeptID int PRIMARY KEY identity(1,1),
    DeptName VARCHAR(100)
);

CREATE TABLE Employeess(
    EmpID int PRIMARY KEY identity (1,1),
    EmpName VARCHAR(100),
    DeptID INT REFERENCES Departments1(DeptID),
    Salary INT,
    JoiningDate DATE
);

CREATE TABLE Projects1 (
    ProjectID int PRIMARY KEY identity (1,1),
    ProjectName VARCHAR(100),
    EmpID INT REFERENCES Employeess(EmpID),
    StartDate DATE,
    EndDate DATE
);

INSERT INTO Departments1 ( DeptName) VALUES 
('HR'),('IT'),('Finance'),('R&D'),
('Operations'),('Sales'),('Marketing'),('CustomerSupport');

INSERT INTO Employeess (EmpName, DeptID, Salary, JoiningDate) VALUES
('Anu',1,20000,'2022-01-10'),
('Anitha',2,25000,'2021-03-18'),
('Banu',3,20000,'2023-07-19'),
('Chandru',4,30000,'2020-05-12'),
('Chitra',5,23000,'2022-08-20'),
('Ram',6,18000,'2024-02-23'),
('Latha',7,21000,'2021-11-02'),
('Sunita',8,15000,'2023-12-01');

INSERT INTO Projects1 (ProjectName,EmpID,StartDate,EndDate) VALUES
('Cloud Migration',1,'2023-09-19','2024-01-10'),
('AI Implementation',2,'2022-08-9','2023-02-18'),
('Security Enhancement',3,'2023-09-29','2024-03-20'),
('Marketing Expansion',4,'2021-09-16','2022-04-14'),
('E-Commerce Platform',5,'2020-04-18','2020-08-08'),
('Customer Analytics',6,'2021-10-11','2022-04-02'),
('CRM Development',7,'2020-09-13','2021-03-19'),
('HR System Update',8,'2022-02-15','2022-05-17');
DROP TABLE IF EXISTS Projects1;
DROP TABLE IF EXISTS Employeess;
DROP TABLE IF EXISTS Departments1;


CREATE TABLE Departments1 (
    DeptID INT PRIMARY KEY IDENTITY(1,1),
    DeptName VARCHAR(100)
);
CREATE TABLE Employeess (
    EmpID INT PRIMARY KEY IDENTITY(1,1),
    EmpName VARCHAR(100),
    DeptID INT FOREIGN KEY REFERENCES Departments1(DeptID),
    Salary INT,
    JoiningDate DATE
);

-- Step 3: Create Projects1 table
CREATE TABLE Projects1 (
    ProjectID INT PRIMARY KEY IDENTITY(1,1),
    ProjectName VARCHAR(100),
    EmpID INT FOREIGN KEY REFERENCES Employeess(EmpID),
    StartDate DATE,
    EndDate DATE
);
-- Step 4: Insert Departments
INSERT INTO Departments1 (DeptName) VALUES 
('HR'), 
('IT'), 
('Finance'), 
('R&D'),
('Operations'), 
('Sales'), 
('Marketing'), 
('CustomerSupport');


-- Step 5: Insert Employees
INSERT INTO Employeess (EmpName, DeptID, Salary, JoiningDate) VALUES
('Anu', 1, 20000, '2022-01-10'),
('Anitha', 2, 25000, '2021-03-18'),
('Banu', 3, 20000, '2023-07-19'),
('Chandru', 4, 30000, '2020-05-12'),
('Chitra', 5, 23000, '2022-08-20'),
('Ram', 6, 18000, '2024-02-23'),
('Latha', 7, 21000, '2021-11-02'),
('Sunita', 8, 15000, '2023-12-01');



-- Step 6: Insert Projects
INSERT INTO Projects1 (ProjectName, EmpID, StartDate, EndDate) VALUES
('Cloud Migration', 1, '2023-09-19', '2024-01-10'),
('AI Implementation', 2, '2022-08-09', '2023-02-18'),
('Security Enhancement', 3, '2023-09-29', '2024-03-20'),
('Marketing Expansion', 4, '2021-09-16', '2022-04-14'),
('E-Commerce Platform', 5, '2020-04-18', '2020-08-08'),
('Customer Analytics', 6, '2021-10-11', '2022-04-02'),
('CRM Development', 7, '2020-09-13', '2021-03-19'),
('HR System Update', 8, '2022-02-15', '2022-05-17');

select * from Employeess;

select * from departments1;

select * from projects1;

update employeess
set salary = 75000
where EmpID=3;

update departments1
set DeptName = 'Human_Resourses'
where  DeptName='HR';

update projects1
set EndDate = '2024-06-30'
where  ProjectName='cloud migration';


DELETE FROM Projects1
WHERE ProjectID = (SELECT MAX(ProjectID) FROM Projects1);

SELECT Employeess.EmpName, Departments1.DeptName, Employeess.Salary
FROM Employeess
INNER JOIN Departments1 ON
Employeess.DeptID = Departments1.DeptID;

SELECT Employeess.EmpName, projects1.ProjectName,Projects1.StartDate,Projects1.EndDate 
FROM Employeess
left JOIN projects1 ON
Employeess.EmpID = projects1.EmpID;

SELECT Employeess.EmpName,Departments1.DeptName, projects1.ProjectName,Projects1.StartDate,Projects1.EndDate 
FROM Employeess
JOIN Departments1 ON
Employeess.DeptID = Departments1.DeptID
join projects1 on
employeess.empid=Projects1.empid;

SELECT Departments1.DeptName, Departments1.DeptID ,Employeess.EmpName
from Departments1
left join Employeess on
Departments1.DeptID=Employeess.DeptID;

select
Employeess.EmpName,employeess.empid ,projects1.ProjectName,Projects1.StartDate,Projects1.EndDate 
from employeess
right join projects1 on
employeess.empid=projects1.empid;

--ClientID (Primary Key), ClientName, ContactPerson, Email (Unique), Phone.

create table clients(

clientid int primary key identity (1,1),
clientname varchar(30),
contactperson varchar (50),
email varchar(50)unique,
phone varchar (50)
);

select * from clients;

drop table clients;

INSERT INTO Clients (ClientName,ContactPerson,Email,Phone) VALUES

('Abi','John','abc@gmail.com','8239876509'),
('Anand','Karthik','def@gmail.com','9879876585'),
('Gowtham','Dinesh','ghi@gmail.com','9872653048'),
('Ankitha','Pugal','jkl@gmail.com','8784567903'),
('Pavani','Abinesh','mno@gmail.com','992376598'),
('Mahesh','Mani','pqr@gmail.com','7845760098'),
('Mohan','Chandana','stu@gmail.com','7845709876'),
('Bala','Joe','vwx@gmail.com','7845726453');

--TaskID (Primary Key), TaskName, ClientID (Foreign Key from Clients),EmpID (Foreign Key from employees) DueDate, Status.

create table Tasks	(
TaskID int primary key identity(1,1),
TaskName varchar(100),
ClientID int  REFERENCES Clients(ClientID),
EmpID int REFERENCES Employeess(EmpID), 
DueDate date, 
Status varchar(100)
);

select * from tasks;
drop table tasks;
INSERT INTO Tasks ( TaskName, ClientID,EmpID, DueDate, Status) VALUES
('Website Re-design', 1, 1,'2024-05-16', 'completed'),
( 'System Update', 2, 2,'2024-06-10', 'pending'),
( 'Database Migration', 3,3, '2025-09-22', 'in progress'),
( 'Mobile App Testing', 4, 4,'2024-08-01', 'pending'),
( 'Cloud Integration', 5, 5,'2025-01-15', 'completed'),
( 'Security Audit', 6, 6,'2024-11-20', 'in progress'),
('UI Enhancement', 7, 7,'2024-07-05', 'completed'),
( 'Performance Tuning', 8, 8,'2025-03-12', 'pending');

select tasks.taskname,clients.clientname,employeess.empname
from tasks
left join clients on 
tasks.ClientID = clients.clientID
left join employeess on
tasks.EmpID = employeess.empID


SELECT Tasks.TaskName, Clients.ClientName, Employeess.EmpName
FROM Tasks
LEFT JOIN Clients ON Tasks.ClientID = Clients.ClientID
LEFT JOIN Employeess ON Tasks.EmpID = Employeess.EmpID;

SELECT Employeess.EmpName,Departments1.DeptName,Clients.ClientName,tasks.taskname
from employeess
 join department1 on
Employeess.DeptID = Departments1.DeptID
 join clients
employeess.empID = Clients.empid

SELECT Employeess.EmpName,Departments1.DeptName,Clients.ClientName ,tasks.taskname
FROM Employeess 
JOIN Departments1 ON Employeess.DeptID = Departments1.DeptID
JOIN Tasks ON Employeess.EmpID = Tasks.EmpID
JOIN Clients ON Tasks.ClientID = Clients.ClientID;

SELECT Departments1.DeptName, Employeess.EmpName, Projects1.ProjectName
FROM Departments1 
 JOIN Employeess ON Departments1.DeptID = Employeess.DeptID
 JOIN Projects1 ON Employeess.EmpID = Projects1.EmpID;

 SELECT Employeess.EmpName, Departments1.DeptName, COUNT(Tasks.TaskID) AS TotalTasks
FROM Employeess 
JOIN Departments1 ON Employeess.DeptID = Departments1.DeptID
LEFT JOIN Tasks ON Employeess.EmpID = Tasks.EmpID
GROUP BY Employeess.EmpID,Employeess.EmpName,Departments1.DeptName;

--dont understand (how they use joins)

SELECT Clients.ClientName,Tasks.TaskName,Employeess.EmpName
FROM Clients
LEFT JOIN Tasks ON Clients.ClientID = Tasks.ClientID
LEFT JOIN Employeess ON Tasks.EmpID = Employeess.EmpID;

SELECT Projects1.ProjectName, Employeess.EmpName, Departments1.DeptName
FROM Projects1 
LEFT JOIN Employeess ON Projects1.EmpID = Employeess.EmpID
LEFT JOIN Departments1 ON Employeess.DeptID = Departments1.DeptID;

SELECT Employeess.EmpName, Departments1.DeptName,Tasks.TaskName
FROM Employeess 
LEFT JOIN Departments1 ON Employeess.DeptID = Departments1.DeptID
LEFT JOIN Tasks ON Employeess.EmpID = Tasks.EmpID;


-- i. Retrieve all tasks, their clients, and the projects related to those tasks.

select tasks.taskname,clients.clientname,projects1.projectname
from tasks
left join clients on
tasks.clientid = clients.clientid 
left join projects1  on 
projects1.empid = tasks.empid;


SELECT Employeess.EmpName,Employeess.Salary,Count(Tasks.TaskID) AS TotalTasks
FROM Employeess
JOIN Tasks ON Employeess.EmpID = Tasks.TaskID
GROUP BY Employeess.EmpID,Employeess.EmpName,Employeess.Salary;

-- Retrieve all employees, their department, and the name of the client for whom they have completed at least one task.

SELECT Employeess.EmpName, Departments1.DeptName, Clients.ClientName
FROM Employeess
JOIN Departments1 ON Employeess.DeptID = Departments1.DeptID
JOIN Tasks ON Employeess.EmpID = Tasks.EmpID
JOIN Clients ON Tasks.ClientID = Clients.ClientID
WHERE Tasks.Status = 'completed';

SELECT Employeess.EmpName,Projects1.ProjectName,Clients.ClientName
FROM Employeess
LEFT JOIN Projects1 ON Employeess.EmpID = Projects1.EmpID
LEFT JOIN Tasks ON Employeess.EmpID = Tasks.EmpID
LEFT JOIN Clients ON Tasks.ClientID = Clients.ClientID;
