

--Employees : EmpID (Primary Key), EmpName, DeptID (Foreign Key from Departments), Salary, JoiningDate.
create table Employee_1(
Empid int primary key identity(1,1),
empname varchar(100),
    DeptID INT REFERENCES Departments(DeptID),
	salary int,
joinngdate date
);

--Departments : DeptID (Primary Key), DeptName.(


create table department_1(
depid int primary key identity (1,1),
depname varchar(100)
);

--Projects : ProjectID (Primary Key), ProjectName, EmpID (Foreign Key from Employees), StartDate, EndDate.

create table projects_1(
projectid int primary key identity (1,1),
projectname varchar(50),
EmpID INT REFERENCES Employees(EmpID),
startdate date,
enddate date);


INSERT INTO Department_1 (DepName) VALUES 
('HR'),('IT'),('Finance'),('R&D'),
('Operations'),('Sales'),('Marketing'),('CustomerSupport');

INSERT INTO Employee_1 (EmpName, DeptID, Salary, JoinngDate) VALUES
('Anu',1,20000,'2022-01-10'),
('Anitha',2,25000,'2021-03-18'),
('Banu',3,20000,'2023-07-19'),
('Chandru',4,30000,'2020-05-12'),
('Chitra',5,23000,'2022-08-20'),
('Ram',6,18000,'2024-02-23'),
('Latha',7,21000,'2021-11-02'),
('Sunita',8,15000,'2023-12-01');

INSERT INTO Projects_1 (ProjectName,StartDate,EndDate) VALUES
('Cloud Migration','2023-09-19','2024-01-10')


INSERT INTO Projects_1 (ProjectName,EmpID,StartDate,EndDate) VALUES
('Cloud Migration',1,'2023-09-19','2024-01-10')

INSERT INTO Projects_1 (ProjectName,StartDate,EndDate) VALUES
('AI Implementation','2022-08-9','2023-02-18')
,
('Security Enhancement','2023-09-29','2024-03-20'),
('Marketing Expansion','2021-09-16','2022-04-14'),
('E-Commerce Platform','2020-04-18','2020-08-08'),
('Customer Analytics','2021-10-11','2022-04-02'),
('CRM Development','2020-09-13','2021-03-19'),
('HR System Update','2022-02-15','2022-05-17');

select * from employee_1;
select *from department_1;
select * from projects_1;

DROP TABLE IF EXISTS Projects_1;

INSERT INTO Projects_1 (ProjectName,StartDate,EndDate) VALUES
('Cloud Migration','2023-09-19','2024-01-10')
('AI Implementation',2,'2022-08-9','2023-02-18'),
('Security Enhancement',3,'2023-09-29','2024-03-20'),
('Marketing Expansion',4,'2021-09-16','2022-04-14'),
('E-Commerce Platform',5,'2020-04-18','2020-08-08'),
('Customer Analytics',6,'2021-10-11','2022-04-02'),
('CRM Development',7,'2020-09-13','2021-03-19'),
('HR System Update',8,'2022-02-15','2022-05-17');

DROP TABLE IF EXISTS Projects_1;
DROP TABLE IF EXISTS Employee_1;
DROP TABLE IF EXISTS Department_1;