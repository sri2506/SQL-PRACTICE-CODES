

create table customer(
name varchar (30),
Cus_id int
);
 insert into customer values('ravi',01);
 insert into customer values('eravi',02);
 insert into customer values('sravi',03);
 insert into customer values('rfavi',04);
 insert into customer values('ravi',05);
 insert into customer values('wravi',06);

 create table details1(
 location varchar (30),
 number int,
 Cus_id int
);

 insert into details1 values('chennai',9876567,01);
 insert into details1 values('minjur',34567,02);
 insert into details1 values('madurai',566789,03);
 insert into details1 values('ooty',455678,04);
 insert into details1 values('india',567899,05);
 insert into details1 values('kashmir',567890,06);
  insert into details1 values('chennai',907890,07);
  select * from details1;
  
 select * from customer;
  select customer.name,customer.cus_id,details1.location
  from customer
  left join details1 on
  customer.cus_id=details1.cus_id;

   select customer.name,customer.cus_id,details1.location
  from details1
  right join customer on
  customer.cus_id=details1.cus_id;



  CREATE TABLE Orders(
Order_num int,
Purchase_amount decimal(8,2),
Order_date date,
Customer_id int,
Salesman_id int
);

INSERT INTO Orders VALUES
(70001,150.5,'2012-10-05',3005,5002),(70009,270.65,'2012-09-10',3001,5005),
(70002,65.26,'2012-10-05',3002,5001),(70004,110.5,'2012-08-17',3009,5003),
(70007,948.5,'2012-09-10',3005,5002),(70005,2400.6,'2012-07-27',3007,5001),
(70008,5760,'2012-09-10',3002,5001),(70010,1983.43,'2012-10-10',3004,5006),
(70003,2480.4,'2012-10-10',3009,5003),(70012,250.45,'2012-06-27',3008,5002),
(70011,75.29,'2012-08-17',3003,5007),(70013,3045.6,'2012-04-25',3002,5001);


CREATE TABLE SalesMan(
Salesman_id int,
Name varchar(50),
City varchar(50),
Comission float
);

insert into salesman values(5001,'James Hoog','New York',0.15),(5002,'Nail Knite','Paris',0.13),
(5005,'Pit Alex','London',0.11),(5006,'Mc Lyon','Paris',0.14),
(5007,'Paul Adam','Rome',0.13),(5003,'Lauson Hen','San Jose',0.12);

select * from salesman;
select * from customers;

CREATE TABLE Customers(
Customer_id int,
Cus_name varchar(100),
City varchar(150),
Grade int,
Salesman_id int
);

INSERT INTO Customers VALUES
(3002,'Nick Rimando','New York',100,5001),(3007,'Brad Davis','New York',200,5001),
(3005,'Graham Zusi','California',200,5002),(3008,'Julian Green','London',300,5002),
(3004,'Fabian Johnson','Paris',300,5006),(3009,'Geoff Cameron','Berlin',100,5003),
(3003,'Jozy Altidor','Moscow',200,5007),(3001,'Brad Guzan','London',null,5005);

CREATE TABLE Company_Mast(
Com_ID int,
Com_name varchar(50)
);

INSERT INTO Company_Mast(Com_ID,Com_Name)
VALUES(11,'Samsung'),
      (12,'iBall'),
      (13,'Epsion'),
      (14,'Zebronics'),
      (15,'Asus'),
      (16,'Frontech');

 CREATE TABLE Item_Mast(
PRO_ID int,
PRO_Name varchar(30),
PRO_Price numeric(10,2),
Pro_Com int
);

INSERT INTO Item_Mast(PRO_ID,PRO_Name,PRO_Price,PRO_Com)
VALUES(101,'Mother Board',3200.00,15),					
      (102,'Key Board',450.00,16),			
      (103,'ZIP drive',250.00,14),					
      (104,'Speaker',550.00,16),					
      (105,'Monitor',5000.00,11),					
      (106,'DVD drive',900.00,12),					
      (107,'CD drive',800.00,12),					
      (108,'Printer',2600.00,13),					
      (109,'Refill cartridge',350.00,13),	
	  (110,'Mouse',250.00,12);


CREATE TABLE Emp_Department
(
Dpt_Code int,
Dpt_Name varchar(20),
Dpt_Allotment int
);

INSERT INTO Emp_Department(DPT_CODE,DPT_NAME,DPT_ALLOTMENT)
VALUES(57,'IT',65000),
      (63,'Finance',15000),
      (47,'HR',240000),
      (27,'RD',55000),
      (89,'QC',75000);

  
CREATE TABLE Emp_Details
(
Emp_IDNO int,
Emp_Fame varchar(30),
Emp_LName varchar(20),
Emp_Dept int
);
    

INSERT INTO Emp_Details(Emp_IDNO,Emp_Fame,Emp_LName,Emp_Dept)					
VALUES(127323,'Michale','Robbin',57),					
      (526689,'Carlos','Snares',63),					
      (843795,'Enric','Dosio',57),					
      (328717,'Jhon','Snares',63),					
      (444527,'Joseph','Dosni',47),					
      (659831,'Zanifer','Emily',47),					
      (847674,'Kuleswar','Sitaraman',57),					
      (748681,'Henrey','Gabriel',47),					
      (555935,'Alex','Manuel',57),					
      (539569,'George','Mardy',27),					
      (733843,'Mario','Saule',63),					
      (631548,'Alan','Snappy',27),				
      (839139,'Maria','Foster',57);


	  select salesman.name AS Salesman,customers.Cus_name ,salesman.city
	  from salesman
	  inner join customers on salesman.city=customers.city
	  
SELECT Salesman.Name AS Salesman,Customers.Cus_Name,Salesman.city
FROM Salesman
JOIN Customers ON Salesman.City = Customers.City
WHERE Salesman.City = Customers.City;

SELECT 
Orders.Order_num,
Orders.Purchase_Amount,
Customers.Cus_Name,
Customers.City
FROM Orders
JOIN Customers ON Orders.Customer_ID = Customers.Customer_ID
WHERE Purchase_Amount BETWEEN 500 AND 2000;

SELECT 
Customers.Cus_Name AS Customer_Name,
Customers.City,
SalesMan.Name AS SalesMan, 
SalesMan.Comission
FROM Customers
JOIN SalesMan ON Customers.SalesMan_ID = SalesMan.SalesMan_ID;
 select * from salesman;
 select * from customers;

 SELECT 
Customers.Cus_Name AS Customer_Name,
Customers.City,
SalesMan.Name AS SalesMan, 
SalesMan.Comission
FROM Customers
JOIN SalesMan ON Customers.SalesMan_ID = SalesMan.SalesMan_ID
Where Comission > 0.12;

select
Customers.City AS Customer_City,
SalesMan.Name AS SalesMan,
SalesMan.City AS SalesMan_City,
SalesMan.Comission
FROM Customers
JOIN SalesMan ON Customers.SalesMan_ID = SalesMan.Salesman_ID
WHERE Customers.city <> SalesMan.city 
      AND Comission > 0.12;

	  	
SELECT
Orders.Order_num AS ord_no,
Orders.Order_Date AS ord_date ,
Orders.Purchase_Amount AS purch_amt,
Customers.Cus_Name AS customer_name,
Customers.Grade,
SalesMan.Name AS SalesMan,
SalesMan.Comission
FROM Orders
JOIN Customers ON Orders.Customer_ID = Customers.Customer_ID
JOIN SalesMan ON Orders.SalesMan_ID = SalesMan.SalesMan_ID;


SELECT 
Orders.order_num,
Orders.purchase_amount,
Orders.order_date,
Customers.customer_id,
Customers.cus_name,
Customers.city AS customer_city,
Customers.grade,
SalesMan.salesman_id,
SalesMan.name AS salesman_name,
SalesMan.city AS salesman_city,
SalesMan.comission
FROM orders
JOIN Customers ON Orders.Customer_ID = Customers.Customer_ID
JOIN SalesMan ON Orders.SalesMan_ID = SalesMan.SalesMan_ID;

select
Customers.cus_name,
Customers.city AS customer_city,
Customers.grade,
SalesMan.name AS salesman,
SalesMan.city AS salesman_city 
from customers
join salesman on customers.salesman_id  = salesman.salesman_id 
order by customers.customer_id asc;

select * from customers;
select * from salesman;

SELECT 
Customers.Cus_name,
Customers.City AS Customer_City,
Customers.Grade,
SalesMan.Name AS SalesMan,
SalesMan.City AS SalesMan_City
FROM Customers
JOIN SalesMan ON Customers.SalesMan_ID =  salesman.salesman_id 
ORDER BY Customers.Customer_ID ASC;

SELECT 
Customers.Cus_name,
Customers.City AS Customer_City,
Customers.Grade,
SalesMan.Name AS SalesMan,
SalesMan.City AS SalesMan_City
from customers
join salesman on
customers.salesman_id=salesman.salesman_id
where customers.grade<300
order by customers.customer_id asc;

SELECT 
Customers.Cus_name,
Customers.City AS Customer_City,
Orders.Order_Num AS Order_Number,
Orders.Order_Date,
Orders.Purchase_Amount
from customers 
left join orders on customers.customer_id= orders.customer_id
ORDER BY Orders.Order_Date ASC;

select * from orders;


SELECT 
Customers.Cus_Name AS Customer_Name,
Customers.City AS Customer_City,
Orders.Order_Num AS Order_Number,
Orders.Order_Date,
Orders.Purchase_Amount AS Order_Amount,
SalesMan.Name AS SalesMan_Name,
SalesMan.Comission
FROM Customers
LEFT JOIN Orders ON Customers.Customer_ID = Orders.Customer_ID
LEFT JOIN SalesMan ON Customers.SalesMan_ID = SalesMan.SalesMan_ID;

SELECT 
 SalesMan.Name AS SalesMan_Name,
Customers.Cus_Name AS Customer_Name
FROM SalesMan
LEFT JOIN Customers ON SalesMan.SalesMan_ID = Customers.SalesMan_ID
 ORDER BY SalesMan.Name ASC;

select * from customers;
select * from salesman;

SELECT 
SalesMan.Name AS SalesPersons,
Customers.Cus_Name AS Customer_Name,
Customers.City AS Customer_City,
Customers.Grade,
Orders.Order_Num AS Order_Number,
Orders.Order_Date,
Orders.Purchase_Amount AS Order_Amount
FROM SalesMan
LEFT JOIN Customers ON SalesMan.SalesMan_ID = Customers.SalesMan_ID
LEFT JOIN Orders ON SalesMan.SalesMan_ID = Orders.SalesMan_ID;


SELECT 
SalesMAN.Name AS SalesMan,
Customers.Cus_Name,
Customers.Grade,
Orders.Purchase_Amount AS Order_Amount
FROM SalesMan
LEFT JOIN Customers ON SalesMan.SalesMan_ID = Customers.SalesMan_ID
LEFT JOIN Orders ON SalesMan.SalesMan_ID = Orders.SalesMan_ID
WHERE (Orders.Purchase_Amount >= 2000 AND Customers.Grade IS NOT NULL)
OR (Customers.Customer_ID IS NULL);
select * from customers;
select * from orders;
select * from salesman;


SELECT
Customers.Cus_Name,
Customers.City AS Customer_City,
Orders.Order_Num,
Orders.Order_Date,
Orders.Purchase_Amount
FROM Customers
LEFT JOIN Orders ON Customers.Customer_ID = Orders.Customer_ID
WHERE (Customers.Grade IS NOT NULL)
OR (Customers.Customer_ID IS NULL);

SELECT * FROM SalesMan,Customers;

SELECT *
FROM SalesMan
CROSS JOIN Customers
WHERE SalesMan.City IS NOT NULL;

SELECT *
FROM Item_Mast
INNER JOIN Company_Mast ON Item_Mast.Pro_Com = Company_Mast.Com_ID;
select * from Item_Mast;
select * from company_Mast;

SELECT 
Item_Mast.Pro_Name AS Item_Name,
Item_Mast.Pro_Price AS Item_Price,
Company_Mast.Com_Name AS Company_Name
FROM Item_Mast
JOIN Company_Mast ON Item_Mast.Pro_Com = Company_Mast.Com_ID;

SELECT 
AVG(Item_Mast.Pro_Price) AS Average_Price,
Company_Mast.Com_Name
FROM Item_Mast
JOIN Company_Mast ON Item_Mast.Pro_Com = Company_Mast.Com_ID
GROUP BY Company_Mast.Com_Name;


SELECT 
AVG(Item_Mast.Pro_Price) AS Average_Price,
Company_Mast.Com_Name AS Company_Name
FROM Item_Mast
JOIN Company_Mast ON Item_Mast.Pro_Com = Company_Mast.Com_ID
WHERE Item_Mast.Pro_Price >= 350
GROUP BY Company_Mast.Com_Name;

SELECT 
MAX(Item_Mast.Pro_price) max_pro_price, 
Item_Mast.Pro_Name,
Company_Mast.Com_Name
FROM Item_Mast
JOIN Company_Mast ON Item_Mast.Pro_Com = Company_Mast.Com_ID
GROUP BY Item_Mast.Pro_Name, Company_Mast.Com_Name;


select * 
from Emp_Details 
join Emp_Department
on Emp_Details.Emp_Dept = Emp_Department.Dpt_Code;

SELECT 
Emp_Details.Emp_Fame AS First_Name,
Emp_Details.Emp_LName AS Last_Name,
Emp_Department.Dpt_Name AS Department_Name,
Emp_Department.Dpt_Allotment AS Sanction_Amount
FROM Emp_Details
JOIN Emp_Department ON Emp_Details.Emp_Dept = Emp_Department.Dpt_Code;


SELECT
Emp_Department.Dpt_Name,
Emp_Department.Dpt_Allotment,
Emp_Details.Emp_Fame AS First_Name,
Emp_Details.Emp_LName AS Last_Name
FROM Emp_Department
JOIN Emp_Details ON Emp_Department.Dpt_Code = Emp_Details.Emp_Dept
WHERE Emp_Department.Dpt_Allotment > 50000;


SELECT 
Emp_Department.Dpt_Name
FROM Emp_Department
JOIN Emp_Details ON Emp_Department.Dpt_Code = Emp_Details.Emp_Dept
GROUP BY Emp_Department.Dpt_Name
HAVING COUNT(Emp_Details.Emp_IDNO) > 2;

SELECT 
Emp_Department.Dpt_Name
FROM Emp_Department
JOIN Emp_Details ON Emp_Department.Dpt_Code = Emp_Details.Emp_Dept
;