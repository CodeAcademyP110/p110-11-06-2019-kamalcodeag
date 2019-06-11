--use CodeAcademy

--create table Groups (
--	Id int primary key identity,
--	Name nvarchar(50) not null unique
--)

--create table Students(
--	Id int primary key identity,
--	Firstname nvarchar(50) not null,
--	Lastname nvarchar(50),
--	Email nvarchar(100) not null unique,
--	Birthdate datetime,
--	GroupId int
--)

--insert into Groups values('P300'), ('P211'), ('P220'), ('V300'), ('D100')
--insert into Students values('İlkin', 'Sardarov', 'ilkin@code.az', '1900-12-12', 10),
--					 ('Elmar', 'İbrahimli', 'elmar@code.az', '1990-10-10', 2),
--					 ('Şəmsiyyə', 'Məmmədova', 'shams@code.az', '1995-01-10', 3),
--					 ('Elçin', 'Heydərov', 'elchin@code.az', '1950-05-03', 1)

--select * from Groups order by Id

--select * from Students
--select * from Groups

--select 
--	Students.Firstname + ' ' + Students.Lastname 'Full name', 
--	Students.Email, 
--	Students.Birthdate, 
--	Groups.Name 'Group Name'
--from Students
--full outer join Groups on Students.GroupId = Groups.Id

-- join: inner and outer
-- outer join: left join, right join, full join
-- self-join

--create table Positions(
--	Id int primary key identity,
--	PositionName nvarchar(100) not null unique,
--	ReportsTo int
--)

--SELF JOIN
--select Pos.PositionName 'Position name', Pos2.PositionName ReportsTo 
--from Positions Pos
--left  join Positions Pos2 on Pos.ReportsTo = Pos2.Id

--EQUI-JOIN
--NON-EQUI JOIN

--alter table Students
--add Score int check(Score between 0 and 100)

--update Students
--set Score = 83
--where Id  = 2


--create table Grades(
--	Id int primary key identity,
--	MinScore int not null,
--	MaxScore int not null,
--	Grade char(1)
--)

--select * from Students
--select * from Grades

--insert into Grades values(0, 50, 'F'), 
--						 (51, 60, 'E'), 
--						 (61, 70, 'D'), 
--						 (71, 80, 'C'),
--						 (81, 90, 'B'),
--						 (91, 100, 'A')

--select 
--	CONCAT(Students.Firstname, ' ', Students.Lastname) Fullname, 
--	 Students.Email, 
--	Grades.Grade
--from Students
--join Grades on Students.Score between Grades.MinScore and Grades.MaxScore

select 
	concat(st.Firstname, ' ', st.Lastname) Fullname,
	st.Email,
	gr.Name 'Group Name',
	gd.Grade
from Students st
join Groups gr on st.GroupId = gr.Id
join Grades gd on st.Score between gd.MinScore and gd.MaxScore