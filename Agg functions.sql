create table school(
NAME VARCHAR(30),
ROLLNO INT,
LOCATION VARCHAR (30),
MARK INT);

DROP TABLE SCHOOL;

SELECT * FROM SCHOOL;

INSERT INTO school (NAME,ROLLNO,LOCATION,MARK) VALUES('SAI', 001,'CHENNAI',76),('SASI', 002,'CHENNAI',86),
('RASAI', 003,'OOTY',96),('HJSAI', 004,'CHENNAI',36),('ESAI', 005,'PONNERI',100),('SVAI', 006,'CHENNAI',76),('PSAI', 008,'CHENNAI',76),('MSAI', 009,'CHENNAI',76),
('SARI', 0010,'CHENNAI',76),('SATI', 0011,'MINJUR',76),('GSAUI', 0011,'DINDUKAL',76),('FSAI', 0012,'MADURAI',56);

SELECT * FROM SCHOOL
ORDER BY NAME,MARK ;

SELECT * FROM SCHOOL WHERE LOCATION='CHENNAI' OR NAME='SAI';

SELECT *  FROM SCHOOL WHERE NAME BETWEEN 'SAI' AND 'RASAI';
ORDER BY NAME;


 ALTER TABLE SCHOOL ADD HIREDATE DATE;

 UPDATE SCHOOL SET HIREDATE ='2021-09-09';


 SELECT AVG(MARK) TOTAL
 FROM SCHOOL;

 SELECT COUNT(*) 
 FROM SCHOOL;


 CREATE TABLE COMPANY4(
 ID INT NOT NULL PRIMARY KEY, 
 NAME VARCHAR(40) UNIQUE,
 SALARY INT CHECK (SALARY <1000)
 );

ALTER TABLE COMPANY3
ADD SALARY INT CHECK(SALARY<1000);


CREATE PROCEDURE ALL_RECORDS
AS
SELECT *FROM SCHOOL;

EXEC ALL_RECORD

CREATE PROCEDURE NEEDED
AS
 SELECT NAME,LOCATION FROM SCHOOL WHERE MARK = 90;
  EXEC NEEDED;

  CREATE INDEX MYINDEX
  ON SCHOOL (NAME,ROLLNO);

  DROP INDEX SCHOOL.MYINDEX;


  SELECT TOP 50PERCENT * FROM SCHOOL;


  CREATE VIEW ABC
  AS
  SELECT NAME, LOCATION FROM SCHOOL
  WHERE MARK<80;

  SELECT * FROM ABC;

  select DATEDIFF (curdate(),'%d/%m%y') as date;
   
   select dateadd (year,1,'2020/09/09') as dateadd;
      select dateadd (month,2,'2020/09/09') as dateadd;
	  select datediff(year,'2020/01/20','2022/01/20') as datediff;
	  select getdate();

  select date(now());


 INSERT INTO COMPANY3(ID,NAME,SALARY)VALUES(5,'AGBI',100500);
 SELECT * FROM COMPANY3;
 UPDATE SCHOOL SET HIREDATE= '2020-03-22' WHERE MARK=90;

UPDATE SCHOOL SET MARK=81
WHERE ROLLNO=009;

SELECT * FROM SCHOOL WHERE NAME LIKE '___';

select * from school;

select count(rollno) count_id,location
from school
group by location
having count(rollno)>1
order by count(rollno) asc;

create table info(
id int,
email_id varchar(30),
phn_no int);

insert into info(id,email_id,phn_no) values(1,'sri@gmail.com',89764568);
insert into info(id,email_id,phn_no) values(2,'skio@gmail.com',89764568),(3,'asia@gmail.com',89764568)
,(4,'poi@gmail.com',489764568),(5,'syer@gmail.com',789764568),(6,'sri@gmail.com',899764568);

insert into info(id,email_id,phn_no) values(7,'yrii@gmail.com',99764568),(8,'chennai@gmail.com',89764568);

insert into info (id,email_id,phn_no) values (9,'uno@gmail.com',849764568);

(10,'sooi@gmail.com',899764568),(11,'wex@gmail.com',9089764568);

insert into info (id,email_id,phn_no) values(12,'lioi@gmail.com',89764568),(13,'fri@gmail.com',89764568);

insert into info (id,email_id,phn_no) values(14,'psri@gmail.com',894764568);
insert into info (id,email_id,phn_no) values(15,'eosri@gmail.com',989764568);

alter table info
rename column id to rollno;

delete from info where rollno= '15';

create  view infosummary
with schemabinding
as
select s.name,s.mark,s.rollno,i.email_id,i.phn_no
from school s
join info i
on s.rollno=i.rollno;

select *from mv_table;

exec sp_rename 'info.id','rollno','column';

exec sp_help'info';
drop view school_info;

select * from school
union
select*from info;

create table operation(
name varchar(20),
age int);
 insert into operation(name,age)values('sai',45)
  insert into operation(name,age)values('siai',85)
   insert into operation(name,age)values('spai',45)
  insert into operation(name,age)values('oai',95)
   insert into operation(name,age)values('ewsai',25)
  insert into operation(name,age)values('eai',15);

  select
  name,age 
  count*(name)
  from operation
  group by name, age
  having count*(name)>1;

  from 
  select * from operation;

  create table op2(
  patient_nmae varchar(30),
  age int);

  delete from operation
  where SN not in(select min(SN)
  from operation
  group by (name,age);
  insert into op2(patient_nmae,age)values('raasi',78);





  with toptworanker as
  (
  select *,row_number()
  over
  (partition by location
  order by mark desc) as ranknumber
  from school)

  select*from toptworanker
  where ranknumber<=2;

  select name,mark ,
  rank()over (order by mark desc)as rank
  from school;

  select *from operation
  union 
  select * from op2;