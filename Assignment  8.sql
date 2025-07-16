
---1.Write SQL queries to create the following tables:
	--

	
---- Reviewer

create table Reviewer
(
Rev_Id int,
Rev_Name varchar(50)
)


insert into Reviewer(rev_id,rev_name)
values(9001,'Righty Sock'),
 (9002,'Jack Malvern'),
   (9003,'Flagrant Baronessa'),
   (9004,'Alec Shaw'),
   (9005,Null),
   (9006,'Victor Woeltjen'),
   (9007,'Simon Wright'),
   (9008,'Neal Wruck'),
   (9009,'Paul Monks'),
   (9010,'Mike Salvati'),
  (9011,Null),
   (9012,'Wesley S. Walker'),
   (9013,'Sasha Goldshtein'),
   (9014,'Josh Cates'),
   (9015,'Krug Stillo'),
   (9016,'Scott LeBrun'),
   (9017,'Hannah Steele'),
   (9018,'Vincent Cadena'),
   (9019,'Brandt Sponseller'),
   (9020,'Richard Adams')

   create table Rating
(
Mov_Id int,
Rev_Id int,
Rev_Stars numeric(4,2),
Num_0_Ratings int
)


insert into rating(Mov_Id,Rev_Id,Rev_Stars,Num_0_Ratings)
values(901,9001,8.40,263575),				
    (902,9002,7.90,20207),					
    (903,9003,8.30,202778),					
    (906,9005,8.20,484746),					
    (924,9006,7.30,null),			
    (908,9007,8.60,779489),					
    (909,9008,null,227235),					
    (910,9009,3.00,195961),					
    (911,9010,8.10,203875),					
    (912,9011,8.40,null),				
    (914,9013,7.00,862618),					
    (915,9001,7.70,830095),					
    (916,9014,4.00,642132),					
    (925,9015,7.70,81328),					
    (918,9016,null,580301),					
    (920,9017,8.10,609451),					
    (921,9018,8.00,667758),					
    (922,9019,8.40,511613),					
    (923,9020,6.70,13091)	;				

 
  ------Actor

  create table Actor
  (
  Act_id int,
  Act_Fname Varchar(50),
  Act_Lname varchar(50),
  Act_gender char(1)
  )

  insert into Actor(act_id,act_fname,act_lname,act_gender)
  values(101,'James','Stewart','M'),
    (102,'Deborah','Kerr','F'),
    (103,'Peter','OToole','M'),
    (104,'Robert','De Niro','M'),
    (105,'F. Murray','Abraham','M'),
    (106,'Harrison','Ford','M'),
    (107,'Nicole','Kidman','F'),
    (108,'Stephen','Baldwin','M'),
    (109,'Jack','Nicholson','M'),
    (110,'Mark','Wahlberg','M'),
    (111,'Woody','Allen','M'),
    (112,'Claire','Danes','F'),
    (113,'Tim','Robbins','M'),
    (114,'Kevin','Spacey','M'),
    (115,'Kate','Winslet','F'),
    (116,'Robin','Williams','M'),
    (117,'Jon','Voight','M'),
    (118,'Ewan','McGregor','M'),
    (119,'Christian','Bale','M'),
    (120,'Maggie','Gyllenhaal','F'),
    (121,'Dev','Patel','M'),
    (122,'Sigourney','Weaver','F'),
    (123,'David','Aston','M'),
    (124,'Ali','Astin','F')

	create table movie_cast
(
Act_id int,
Mov_id int, 
Role varchar(50)			
)	



insert into movie_cast(act_id,mov_id,role)		
values(101,901,'John Scottie Ferguson'),		
    (102,902,'Miss Giddens'),
    (103,903,'T.E. Lawrence'),	
    (104,904,'Michael'),
   (105,905,'Antonio Salieri'),	
    (106,906,'Rick Deckard'),	
    (107,907,'Alice Harford'),
    (108,908,'McManus'),
    (110,910,'Eddie Adams'),	
    (111,911,'lvy Singer'),	
    (112,912,'San'),
    (113,913,'ndy Dufresne'),		
    (114,914,'ester Burnham'),
    (115,915,'Rose DeWitt Bukater'),		
    (116,916,'Sean Maguire'),
    (117,917,'Ed'),
    (118,918,'Renton'),
    (120,920,'lizabeth Darko'),		
    (121,921,'Older Jamal'),	
    (122,922,'Ripley'),
    (114,923,'obby Darin'),	
    (109,909,'J.J. Gittes'),	
    (119,919,'Alfred Borden')			



	--movie--


	create table Movie
(
mov_id int,
mov_title varchar(50),
mov_year int,
mov_time int,
mov_lang varchar(30),
mov_dt_rel date,
mov_rel_country	varchar(30)				
)

insert into Movie(mov_id,mov_title,mov_year,mov_time,mov_lang,mov_dt_rel,mov_rel_country)	
values(901,'Vertigo',1958,128,'English','1958-08-24','UK'),					
    (902,'The Innocents' ,1961, 100 ,'English','1962-02-19','SW'),					
    (903, 'Lawrence of Arabia', 1962 ,216 ,'English','1962-12-11', 'UK'	),				
    (904 , 'The Deer Hunter', 1978 ,183,'English','1979-03-08','UK'),					
    (905 , 'Amadeus',  1984 , 160,'English','1985-01-07','UK'),				
    (906 , 'Blade Runner',1982,117,'English','1982-09-09','UK'),				
    (907, 'Eyes Wide Shut',1999 ,159,'English',null,'UK'),					
    (908 , 'The Usual Suspects', 1995 ,106 ,'English', '1995-08-25','UK'),	
	    (909 , 'Chinatown',  1974 ,130 ,'English','1974-08-09','UK'),					
    (910 ,'Boogie Nights',   1997 ,155,'English', '1998-02-16' ,'UK'),				
    (911 ,'Annie Hall',     1977, 93 ,'English','1977-04-20', 'USA'),					
    (912, 'Princess Mononoke', 1997 , 134 ,'Japanese', '2001-10-19' ,'UK'),				
    (913 ,'The Shawshank Redemption', 1994 ,142,'English' ,'1995-02-17','UK'),					
    (914 ,'American Beauty',  1999, 122,'English',null ,'UK'),				
    (915 ,'Titanic',     1997 ,194 , 'English' , '1998-01-23','UK'),			
    (916 , 'Good Will Hunting', 1997, 126,'English' ,'1998-06-03','UK'),					
    (917 , 'Deliverance',  1972 ,109 ,'English' ,'1982-10-05' ,'UK'),					
    (918, 'Trainspotting', 1996 , 94 ,'English', '1996-02-23','UK'),				
    (919 ,'The Prestige', 2006 , 130 ,'English','2006-11-10','UK'),				
    (920,'Donnie Darko', 2001, 113, 'English',null,'UK'),					
    (921,'Slumdog Millionaire',2008,120,'English', '2009-01-09','UK'),					
    (922,'Aliens ', 1986, 137 ,'English','1986-08-29','Uk'),	
    (923,'Beyond the Sea',2004 ,118,'English','2004-11-26','UK'),					
    (924,'Avatar', 2009,  162,'English','2009-12-17','UK'),					
    (926,'Seven Samurai', 1954 ,207,'Japanese', '1954-04-26','JP'),					
    (927,'Spirited Away', 2001,125,'Japanese' ,'2003-09-12','UK'),			
    (928,'Back to the Future',1985,116,'English','1985-12-04','UK'),					
    (925 ,'Braveheart', 1995,178,'English','1995-09-08','UK')					


create table director
(
Dir_Id int,
Dir_Fname varchar(50),
Dir_Lname varchar(50));

	insert  into director(Dir_Id,dir_fname,dir_lname)
	values(201,'Alfred','Hitchcock'),			
    (202,'Jack','Clayton'),			
    (203,'David','Lean'),		
    (204,'Michael' ,'Cimino'),			
    (205,'Milos', 'Forma'),		
    (206,'Ridley','Scott'),			
    (207,'Stanley','Kubrick'),			
    (208,'Bryan','Singer'),			
    (209,'Roman','Polanski'),			
    (210,'Paul','Thomas Anderson'),		
    (211,'Woody','Allen'),			
    (212,'Hayao','Miyazaki'),		
    (213,'Frank','Darabont'),			
    (214,'Sam','Mendes'),			
    (215,'James','Cameron')	,		
    (216,'Gus','Van Sant'),			
    (217,'John','Boorman'),			
    (218,'Danny','Boyle'),			
    (219,'Christophe','Nolan'),		
    (220,'Richard','Kelly')	,	
    (221,'Kevin','Spacey')	,		
    (222,'Andrei','Tarkovsky'),			
    (223,'Peter','Jackson')	

	create table Movie_Direction
(
Dir_Id int,
Mov_Id int
);

insert into Movie_Direction(dir_id,mov_id)
values(201,901),
    (202,902),
    (203, 903),
    (204,904),
    (205,905),
    (206,906),
    (207,907),
    (208,908),
    (209,909),
    (210,910),
    (211,911),
    (212,912),
    (213,913),
    (214,914),
    (215,915),
    (216,916),
    (217,917),
    (218,918),
    (219,919),
    (220,920),
    (218,921),
    (215,922),
    (221,923)



-----	Movie_Genres

create table Movie_Genres
(
Mov_Id int,
Gen_Id int
)
	
insert into Movie_Genres(mov_id,gen_id)values
(922,1001),	(917,1002),(903,1002),(912,1003),(911,1005),	
(908,1006),	(913,1006),(926,1007),(928,1007),(918,1007),
(921,1007),(902,1008),(923,1009),(907,1010),(927,1010),
(901,1010),(914,1011),(906,1012),(904,1013)	

	

----Genres
	
create table Genres
(
Gen_Id int,
Gen_Title varchar(50)
)

insert into Genres(gen_id,gen_title)values
(1001,'Action'),(1002,'Adventure'),
(1003,'Animation'),(1004,'Biography'),
(1005,'Comedy'),(1006,'Crime'),(1007,'Drama'),
(1008,'Horror'),(1009,'Music'),
(1010,'Mystery'),(1011,'Romance'),
(1012,'Thriller'),(1013,'War')

select * from    Genres


   select * from Reviewer
   	select * from Rating
	select * from Actor
	select * from movie_cast
	select* from movie
	select * from director
	select * from Movie_Direction
	select * from Movie_Genres
	select * from    Genres

	--. From the following tables, write a SQL query to find the name of all 
	--reviewers who have rated their ratings with a NULL value. Return reviewer name.

	select Reviewer.Rev_Name
	from Reviewer
	join Rating
	on Reviewer.Rev_Id= Rating.Rev_Id
	where Rating.Rev_Stars  is null;


	--2. From the following tables, write a SQL query to find the actors 
	--who were cast in the movie 'Annie Hall'. Return actor first name, last 

	select actor.act_Fname, Actor.act_Lname,movie_cast.role
	from actor
	join
	 movie_cast on actor.act_id =movie_cast.act_id
	join movie on 
	movie.mov_id=movie_cast.mov_id
	where movie.mov_title ='annie hall';

	--. From the following tables, write a SQL query to find the director who directed 
	-- a movie that casted a role for 'Eyes Wide Shut'. Return director first name, last name and movie title.

	select * from director;
	select * from director;
	select * from movie_cast
	select* from movie
	select * from director
  select * from Reviewer
   	select * from Rating
	select * from Actor
	select * from movie_cast

	select director.dir_Fname, Director.Dir_Lname,movie.mov_title
	from director
	join movie_direction on director.dir_id = movie_direction.dir_id
	join movie on movie_direction.mov_id = movie.mov_id
	where movie.mov_title ='eyes wide shut';

--4. From the following tables, write a SQL query to find who directed a movie that 
	casted a role as ‘Sean Maguire’. Return director first name, last name and movie title. 

	select d.dir_Fname, D.Dir_Lname,mv.mov_title
	from movie_cast mc
	join movie_direction md  on mc.mov_id = md.mov_id
	join director d on md.dir_id=d.dir_id 
	join movie mv on mc.mov_id= mv.mov_id
	where mc.role ='Sean Maguire';

	--5. From the following tables, write a SQL query to find the actors who have not acted in
 	any movie between 1990 and 2000 (Begin and end values are included.). 
	Return actor first name, last name, movie title and release year.---

	select a.act_fname,a.act_lname,mv.mov_title,mv.mov_year
	from actor a
	join movie_cast mc on
	a.act_id= mc.act_id
	join movie mv on mc.mov_id =mv.mov_id
	where mv.mov_year < 1990 or mv.mov_year >2000;

	select * from movie;
	select * from Movie_Genres
	select * from    Genres
		select * from Actor
---	6. From the following tables, write a SQL query to find the directors with number of genres movies. 
	Group the result set on director first name, last name and generic title. 
	Sort the result-set in ascending order by director first name and last name.
 	Return director first name, last name and number of genres movies


	Select d.dir_fname, d.dir_lname,g.gen_title, count(*) as genre_movie_count
	from director d
	join movie_direction md on d.dir_id= md.dir_id
	join movie_genres mg on md.mov_id=mg.mov_id
	join genres g on g.gen_id=mg.gen_id
	group by d.dir_fname, d.dir_lname,g.gen_title
	order by d.dir_fname, d.dir_lname;

	7. From the following table, write a SQL query to find the movies with year and genres. 
	Return movie title, movie year and generic title. 

	select m.mov_title,m.mov_year,g.gen_title
	from movie m 
	join movie_genres mg on
	m.mov_id=mg.mov_id join
	genres g on g.gen_id = mg.gen_id;

--	8.8. From the following tables, write a SQL query to find all the movies with year, genres, and name of the director. 

Select  m.mov_title,m.mov_year,g.gen_title,d.dir_fname,d.dir_lname
From movie m join
movie_direction md on M.mov_id = md.mov_id join 
director d on d.Dir_Id = md. Dir_Id join
Movie_Genres mg on mg.mov_id = m.mov_id
Join genres g on mg.Gen_Id= g.gen_id;


--9. From the following tables, write a SQL query to find the movies released before 1st January 1989. 
	Sort the result-set in descending order by date of release. 
	Return movie title, release year, date of release, duration, and first and last name of the director.

Select m.mov_title,m.mov_year , m.mov_dt_rel,m.mov_time int,d.dir_fname,d.dir_lname
from movie m join 
Movie_Direction md on m.mov_id=md.Mov_Id 
join director d on d.Dir_Id= md.Dir_Id
where m.mov_dt_rel < '1989-01-01'
order by m.mov_dt_rel desc ;

--10. From the following tables, write a SQL query to compute the average time and count number of movies for each genre. 
	Return genre title, average time and number of movies for each genre

select g.gen_title,avg (m.mov_time) avg_time, count(m.mov_id)mov_count
from movie m join Movie_Genres mg
on m.mov_id= mg.Mov_Id join Genres g
on mg.Gen_Id= g.gen_id
group by g.Gen_Title
order by g.Gen_Title;

--11. From the following tables, write a SQL query to find movies with the lowest duration.
	 Return movie title, movie year, director first name, last name, actor first name, last name and role.

SELECT 
  m.mov_title, 
  m.mov_year,
  d.dir_fname, 
  d.dir_lname,
  a.act_fname, 
  a.act_lname, 
  mc.role
FROM Movie m
JOIN Movie_Direction md ON m.mov_id = md.mov_id
JOIN Director d ON md.dir_id = d.dir_id
JOIN Movie_Cast mc ON m.mov_id = mc.mov_id
JOIN Actor a ON mc.act_id = a.act_id
WHERE m.mov_time = (
  SELECT MIN(mov_time) FROM Movie
);
---12. From the following tables, write a SQL query to find those years when a movie received a 
	rating of 3 or 4. Sort the result in increasing order on movie year. Return move year.

Select distinct m.mov_year 
From movie m join 
Rating R on m.mov_id= r.mov_id
Where r.Rev_Stars in ( 3,4)
Order by m.mov_year desc;


--13. From the following tables, write a SQL query to get the reviewer name, movie title, 
	and stars in an order that reviewer name will come first, then by movie title, and lastly by number of stars. 

Select re.rev_name,m.mov_title,ra.Rev_Stars 
From reviewer re join
 rating ra on re.rev_id=ra.rev_id join movie m on  m.mov_id= ra.mov_id 
Order by re.rev_name asc,m.mov_title asc,ra.rev_stars asc ;

--14. From the following tables, write a SQL query to find those movies that have at least one rating and 
received highest number of stars.Sort the result-set on movie title. Return movie title and maximum review stars. 

select m.mov_title, ra.Rev_Stars 
from movie m join rating ra
on m.mov_id=ra.mov_id
where ra.Rev_Stars =  (
select max (Rev_Stars )
from rating
where Rev_Stars is not null
)
order by m.mov_title asc;

--15. From the following tables, write a SQL query to find those movies, which have received ratings.
 Return movie title, director first name, director last name and review stars. 
  
  select m.mov_title,d.dir_fname,d.dir_lname,ra.Rev_Stars
  from movie m 
  join Movie_Direction md
  on m.mov_id = md.mov_id 
  join director d on
  md.dir_id = d.dir_id 
  join rating ra on 
  m.mov_id = ra.mov_id 
  where ra.Rev_Stars is not null; 

