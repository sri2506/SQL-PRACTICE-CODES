
CREATE TABLE new_Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    BranchID INT,
    JoinDate DATE
);
INSERT INTO new_Customers VALUES
(1, 'Arjun Mehta', 101, '2021-05-20'),(2, 'Sneha Patel', 102, '2020-03-15'),(3, 'Ravi Kumar', 101, '2022-01-10'),(4, 'Nisha Reddy', 103, '2023-04-01'),(5, 'Dev Sharma', 104, '2019-09-09'),
(6, 'Meena Joshi', 101, '2021-11-22'),(7, 'Aditya Verma', 104, '2020-06-30'),(8, 'Kavya Nair', 102, '2018-12-12'),(9, 'Rohan Desai', 103, '2022-08-18'),
(10, 'Pooja Singh', 101, '2023-02-14'),(11, 'Neha Kapoor', 102, '2023-03-21'),(12, 'Ajay Thakur', 104, '2022-10-01'),(13, 'Tarun Iyer', 101, '2019-04-04'),(14, 'Bhavna Rao', 103, '2023-06-06'),
(15, 'Sunil Jain', 104, '2021-01-01'),(16, 'Isha Malik', 101, '2023-09-09'),(17, 'Mohit Sinha', 102, '2022-02-02'),(18, 'Alok Dey', 103, '2021-07-07'),(19, 'Jyoti Ghosh', 104, '2020-08-08'),(20, 'Preeti Yadav', 101, '2023-11-11');

CREATE TABLE Branches (
    BranchID INT PRIMARY KEY,
    BranchName VARCHAR(100),
    Location VARCHAR(100)
);

INSERT INTO Branches VALUES
(101, 'Mumbai Main', 'Mumbai'),
(102, 'Delhi Central', 'Delhi'),
(103, 'Chennai South', 'Chennai'),
(104, 'Bangalore North', 'Bangalore');

-- Accounts table
CREATE TABLE Accounts (
    AccountNo INT PRIMARY KEY,
    CustomerID INT,
    AccountType VARCHAR(50),
    Balance DECIMAL(15,2),
    OpenDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES new_Customers(CustomerID)
);

INSERT INTO Accounts VALUES
(201, 1, 'Savings', 150000.00, '2021-06-01'),
(202, 1, 'FD', 500000.00, '2021-07-01'),
(203, 2, 'Savings', 25000.00, '2020-04-10'),
(204, 3, 'Savings', 40000.00, '2022-01-15'),
(205, 3, 'Current', 30000.00, '2022-05-01'),
(206, 4, 'Savings', 60000.00, '2023-04-05'),
(207, 5, 'Savings', 110000.00, '2019-09-15'),
(208, 6, 'Current', 90000.00, '2022-02-20'),
(209, 7, 'Savings', 200000.00, '2020-08-01'),
(210, 8, 'FD', 300000.00, '2019-12-20'),
(211, 9, 'Current', 45000.00, '2022-09-10'),
(212, 10, 'Savings', 75000.00, '2023-03-01'),
(213, 11, 'Current', 65000.00, '2023-04-04'),
(214, 12, 'FD', 100000.00, '2022-10-10'),
(215, 13, 'Savings', 80000.00, '2019-04-15'),
(216, 14, 'Current', 55000.00, '2023-07-07'),
(217, 15, 'Savings', 150000.00, '2021-01-20'),
(218, 16, 'FD', 200000.00, '2023-10-10'),
(219, 17, 'Current', 95000.00, '2022-03-03'),
(220, 18, 'Savings', 120000.00, '2021-08-08');

-- Transactions table
CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    AccountNo INT,
    Amount DECIMAL(12,2),
    TransactionType VARCHAR(20),
    TransactionDate DATE,
    FOREIGN KEY (AccountNo) REFERENCES Accounts(AccountNo)
);

INSERT INTO Transactions VALUES
(1001, 201, 5000.00, 'Deposit', '2023-12-01'),
(1002, 201, 2000.00, 'Withdrawal', '2024-01-03'),
(1003, 203, 2500.00, 'Deposit', '2024-01-10'),
(1004, 204, 4000.00, 'Withdrawal', '2024-01-15'),
(1005, 207, 10000.00, 'Deposit', '2024-02-10'),
(1006, 208, 1500.00, 'Withdrawal', '2024-02-14'),
(1007, 209, 3500.00, 'Deposit', '2024-02-20'), 
(1008, 210, 50000.00, 'Deposit', '2024-03-01'),
(1009, 211, 4200.00, 'Withdrawal', '2024-03-05'),
(1010, 212, 8000.00, 'Deposit', '2024-03-10');

-- Loans table
CREATE TABLE Loans (
    LoanID INT PRIMARY KEY,
    CustomerID INT,
    LoanAmount DECIMAL(15,2),
    StartDate DATE,
    DueDate DATE,
    Status VARCHAR(20),
    FOREIGN KEY (CustomerID) REFERENCES new_Customers(CustomerID)
);

INSERT INTO Loans VALUES
(301, 1, 800000.00, '2023-01-01', '2024-01-01', 'Active'),
(302, 2, 400000.00, '2021-03-01', '2022-03-01', 'Closed'),
(303, 3, 1000000.00, '2024-02-01', '2025-02-01', 'Active'),
(304, 4, 200000.00, '2023-05-01', '2024-05-01', 'Defaulted'),
(305, 5, 300000.00, '2020-06-01', '2021-06-01', 'Closed'),
(306, 6, 500000.00, '2022-03-01', '2023-03-01', 'Closed'),
(307, 7, 750000.00, '2021-09-01', '2022-09-01', 'Closed');

-- Repayments table
CREATE TABLE Repayments (
    RepaymentID INT PRIMARY KEY,
    LoanID INT,
    Amount DECIMAL(15,2),
    RepaymentDate DATE,
    IsDelayed TINYINT,
    FOREIGN KEY (LoanID) REFERENCES Loans(LoanID)
);

INSERT INTO Repayments VALUES
(401, 301, 100000.00, '2023-02-01', 0),
(402, 301, 200000.00, '2023-04-01', 1),
(403, 303, 250000.00, '2024-03-01', 0),
(404, 304, 50000.00, '2023-06-15', 1),
(405, 305, 150000.00, '2020-07-01', 0),
(406, 306, 200000.00, '2022-04-01', 1),
(407, 307, 300000.00, '2021-10-01', 0);	


--1. Retrieve the customer’s name, account number, and total credited amount for each customer who has at least 2 credit transactions.
 
Select n.customername,a.accountno,sum(t.amount) totalcredited
from new_Customers n join Accounts a on
n.CustomerID=a.CustomerID join Transactions t on 
t.AccountNo=a.AccountNo
where t.TransactionType ='deposit'
group by n.CustomerName,a.AccountNo
having count(t.TransactionType)>=2;

--2. List all customers who have not made any transactions.

select n.customername
from new_Customers n 
left join Accounts a  on n.CustomerID=a.CustomerID 
left join Transactions t on a.AccountNo=t.AccountNo
where t.Transactionid is null;

3. Find the branch-wise total debit amount from the Transactions table.

select b.branchname, sum(t.amount) as totaldebitamount
from transactions t join accounts a on
t.accountno = a.accountno join new_customers n on 
n.customerid= a.customerid join branches b
on b.branchid=n.branchid
where t.transactiontype='withdrawal'
group by b.branchname;

--4. Show account numbers where the total debit amount is greater than the total credit amount

select a.accountno
from accounts a 
left join 
transactions t on a.accountno=t.accountno
group by a.accountno
having
sum(case when t.transactiontype ='withdrawal' then t.amount else 0 end)>
sum(case when t.transactiontype ='deposit' then t.amount else 0 end);


5. List the top 3 customers with the highest loan amounts and the names of the branches they took the loan from

Select top 3 

N.customername,b.branchname, l.loanamount
From loans l  join new_customers n 
On l.customerid = n.customerid join 
branches b on n.branchid=b.branchid
order by
l.loanamount desc;

6. Find the accounts with no associated transactions.

select a.accountno
from accounts a left join transactions t on
a.accountno=t.accountno
where t. TransactionID is null;

7. Retrieve the customers who have both an account and a loan in the same branch.

select n.customername,n.customerid,b.branchname
from new_customers n join 
accounts a on n.customerid=a.customerid join loans l on
n.customerid=l.customerid join branches b on 
b.branchid=n.branchid;

8. Show all branches that have more than 2 active customers.

select b.branchname,b.branchid,count(n.customerid) as active_clients
from branches b join new_customers n on 
b.branchid=n.branchid
group by b.branchid,b.branchname
having count(n.customerid)>2;

9.Calculate the average loan amount per branch, and display only those branches where the average exceeds ₹20,000.

select
b.branchname, avg(l.loanamount) as avgloanamount
from loans l join new_customers n on 
n.customerid=l.customerid join 
branches b on b.branchid=n.branchid
group by b.branchname
having avg(l.loanamount)>20000;

10. Show each customer’s total number of loans and total repayment amount.

select
n.customername,count(l.loanid) totalloans,sum(r.amount) as totalrepayment
from new_customers n join loans l on 
n.customerid=l.customerid join repayments r on 
l.loanid=r.loanid
group by
n.customername;

11. For each customer, find the difference between the sum of their credits and the sum of their debits.

select n.customername, n.customerid,
sum(case when t.transactiontype='deposit' then t.amount else 0 end)-
sum(case when t.transactiontype='withdrawal' then t.amount else 0 end) as netamount
from new_customers n join accounts a on
n.customerid=a.customerid left join transactions t on
t.accountno=a.accountno
group by  n.customername ,n.customerid;

12. Display customers who have taken a loan but haven’t made any repayments.

select n.customername
from new_customers n join loans l on 
n.customerid=l.customerid left join repayments r  on
l.loanid=r.loanid
where r.repaymentid is null;

13. Find customers whose loan amounts are greater than the total amount in all of their accounts.

select
n.customername,n.customerid
from new_customers n 
where 
(select sum(loanamount)from loans where customerid=n.customerid)>
(select sum(balance) from accounts where customerid= n.customerid);

--14. List the customers who have made more than 5 transactions.

select n.customerid,n.customername
from new_Customers n
join accounts a on a.CustomerID=n.CustomerID
join Transactions t on t.AccountNo=a.AccountNo
where t.TransactionID>5;

--15. Find accounts where the sum of debit transactions exceeds ₹10,000.

select accountno,sum(amount) as total
from transactions 
where transactiontype = 'withdrawal'
group by accountno
having sum (amount)>10000;

--16. List customers along with their total balance across all accounts.

select n.customerid,n.customername, sum(a.balance) as total_balance
from new_Customers n join Accounts a on n.CustomerID=a.CustomerID
group by n.CustomerName,n.CustomerID;

--17. For each customer, calculate the number of distinct accounts and loans they hold.

select n.customername,n.customerid,
count(distinct a.accountno) as accountcount,
count(distinct l.loanid) as loancount
from new_Customers n join accounts a on
n.CustomerID=a.CustomerID join loans l on n.CustomerID=l.CustomerID
group by n.customername,n.customerid

--18. Show customers who have repaid more than 50% of their total loan amount.

select n.customername,n.customerid, sum(l.loanamount) as totalloanamount,sum(r.amount) as totalrepaid
from new_Customers n join loans l  on
n.CustomerID=l.CustomerID 
left join Repayments r on r.LoanID=l.LoanID
group by n.CustomerID,n.CustomerName
having sum(r.amount)>0.5 * sum(l.loanamount);

--19. Find customers whose accounts are in one branch and loans are from another.

select n.customername,n.CustomerID,b1.branchname as accountbranch, b2.branchname as loanbranch
from new_Customers n join Accounts a on a.CustomerID=n.CustomerID join 
loans l on l.CustomerID=n.CustomerID join Branches b1 on b1.BranchID=n.BranchID join 
Branches b2 on b2.BranchID <>n.BranchID 
where l.CustomerID=n.CustomerID;

--20. For each branch, find the number of customers with loans, grouped by gender.

select b.branchname,count(l.customerid) as customer_count
from new_Customers n join loans l on n.CustomerID=l.CustomerID join branches b on b.BranchID=n.BranchID
group by b.BranchName;

--21. Display the list of customers who made transactions in more than one account.

select n.customerid,n.customername
from new_customers n join accounts a
on n.customerid=a.customerid join transactions t on a.accountno=t.accountno
group by n.customerid,n.customername
having count(a.accountno)>1

--22. List account numbers where the latest transaction was a debit.

select t. accountno
from transactions t
join (
select accountno, max(transactiondate) as latestdate
from transactions 
group by accountno
)latest
on t.accountno=latest.accountno AND t.transactiondate=latest.latestdate
 where t.transactiontype='withdrawal'

 --23. For each customer, show the account with the highest credit transaction.

 select n.customerid,
 n.customername,
  t.accountno,
 t.amount as highestcredit
 from 
 new_customers n 
 join accounts a on n.customerid=a.customerid 
 join transactions t  on t.accountno=a.accountno
 where 
 t.transactiontype ='deposit'
 and t.amount = (
 select max(t2.amount)
 from transactions t2
 join accounts a2 on t2.accountno=a2.accountno
 where t2.transactiontype = 'deposit'
 and a2.customerid=n.customerid
 );

 --Show the name of customers who have made repayment installments in two or more months.
 select n.customername
 from repayments r join loans l on
 r.loanid=l.loanid
 join new_customers n  on l.customerid=n.customerid
 group by n.customerid,n.customername
 having count(distinct format(r.repaymentdate,'yyymm'))>=2;

 --25. Identify customers with multiple accounts and calculate their total balance.

 select n.customername,n.customerid,
 count (a.accountno) as number_of_account,
 sum(a.balance) as total_amount
 from new_customers n join accounts a on n.customerid= a.customerid
 group by n.customername,n.customerid
 having count(a.accountno)>1;

 --26. Show accounts with the highest transaction count per customer.

 select n.customerid,a.accountno
 from new_customers n join 

 --27. For each loan, show the total repayment amount and remaining balance.

 select l.loanid, sum(r.amount) as total_repayment_amount,
 (l.loanamount - sum(r.amount)) as remainingbalance
 from loans l
 left join repayments r on l.loanid=r.loanid
  group by l.loanid,l.loanamount;

  --28. Display the transaction count and total amount for each transaction type (debit/credit) per customer.

  select t.transactiontype,
  count(t.transactionid) as transactioncount,
  sum(t.amount) as totalamount
  from transactions t
  group by t.transactiontype;

 

