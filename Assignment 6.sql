

SELECT Salesman.Name AS Salesman,Customers.Cus_Name,Salesman.city
FROM Salesman
JOIN Customers ON Salesman.City = Customers.City
WHERE Salesman.City = Customers.City;

select
orders.Order_num as ord_no,
orders.Order_date as ord_date,
orders.Purchase_amount as purch_amt,
customers.cus_name as customer_name,
customers.grade,
salesman.name as salesman,
salesman.comission
from orders
join customers
on orders.customer_id=customers.customer_id
 
join salesman on orders.salesman_id=salesman.salesman_id;

select
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
from customers join salesman on
customers.salesman_id=salesman.salesman_id
where customers.grade<300
order by Customer_id asc;

select
Customers.cus_name,
Customers.city AS customer_city,
Orders.order_num,
Orders.purchase_amount,
Orders.order_date
from customers 
left join orders on
customers.Customer_id=orders.Customer_id
order by orders.order_date asc;

select
Customers.cus_name,
Customers.city AS customer_city,
Orders.order_num,
Orders.purchase_amount,
Orders.order_date,
SalesMan.name AS salesman_name,
SalesMan.comission
from customers left join orders on
customers.Customer_id=orders.Customer_id
left join salesman on
customers.salesman_id=salesman.salesman_id;

select 
SalesMan.Name,
customers.Cus_name
from salesman left join customers on
salesman.salesman_id=customers.salesman_id
order by salesman.Name asc;

select 
SalesMan.Name,
Customers.cus_name,
Customers.city AS customer_city,
Customers.grade,
Orders.order_num,
Orders.purchase_amount,
Orders.order_date
from salesman 
left join customers on salesman.salesman_id=customers.salesman_id
left join orders on SalesMan.SalesMan_ID = orders.SalesMan_ID;
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

Customers.Cus_Name AS Customer_Name,
Customers.City AS Customer_City,
Customers.Grade,
Orders.Order_Num AS Order_Number,
Orders.Order_Date,
Orders.Purchase_Amount AS Order_Amount
from customers left join orders 
on customers.Customer_id=orders.Customer_id
where( customers.grade is not null)
or (Customers.Customer_id is  null);

select *from customers;

SELECT *
FROM SalesMan
CROSS JOIN Customers
WHERE SalesMan.City IS NOT NULL AND Customers.Grade IS NOT NULL;
WHERE SalesMan.City IS NOT NULL;
select * from customers;

SELECT *
FROM SalesMan
CROSS JOIN Customers
WHERE LOWER(TRIM(SalesMan.City)) <> LOWER(TRIM(Customers.City))
AND Customers.Grade IS NOT NULL;

CREATE TABLE Company_Mast(
Com_ID int,
Com_name varchar(50)
);
 CREATE TABLE Item_Mast(
PRO_ID int,
PRO_Name varchar(30),
PRO_Price numeric(10,2),
Pro_Com int
);
select
Item_Mast.pro_name,
Item_Mast.pro_price,
company_mast.com_name
from item_mast join company_mast on Item_Mast.Pro_Com =Company_Mast.Com_ID;

select
avg (item_mast.PRO_Price) as avg_max_price,
Company_Mast.Com_name
from Item_Mast 
join Company_Mast on 
Item_Mast.Pro_Com =Company_Mast.Com_ID
where  item_mast.PRO_Price>350 
group by company_mast.Com_name;

select
max (Item_Mast.pro_price),
Item_Mast.pro_name,
Company_Mast.Com_name
from Item_Mast join Company_Mast on 
Item_Mast.Pro_Com =Company_Mast.Com_ID
group by item_mast.PRO_Name,Company_Mast.Com_name;

select * from Emp_Details
join Emp_Department on 
Emp_Details.Emp_Dept=Emp_Department.Dpt_code;


CREATE TABLE Emp_Department
(
Dpt_Code int,
Dpt_Name varchar(20),
Dpt_Allotment int
);

select
 Emp_Department.Dpt_Name,
 Emp_Details.Emp_Fame,
 Emp_Details.Emp_LName
 from Emp_Department
 join Emp_Details on Emp_Department.Dpt_Code=Emp_Details.Emp_Dept
 where Emp_Department.Dpt_Allotment >5000;

 select
 Emp_Department.Dpt_Name 
 from
 Emp_Department join Emp_Details on 
 Emp_Department.Dpt_Code=Emp_Details.Emp_Dept
 where Emp_Details.Emp_IDNO>2
 group by Emp_Department.Dpt_Name;

 select
 Emp_Department.Dpt_Name 
 from
 Emp_Department join Emp_Details on 
 Emp_Department.Dpt_Code=Emp_Details.Emp_Dept
 group by Emp_Department.Dpt_Name
 having count (Emp_details.Emp_IDNO)>2;