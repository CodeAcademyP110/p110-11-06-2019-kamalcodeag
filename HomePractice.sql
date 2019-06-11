--select * from users

--select id,name + ' ' + surname 'fullname', age, gender from users

--select id,name + ' ' + surname 'fullname', age, gender, 'manchester united' 'team' from users

--use practice
--select * from users

--select distinct gender from users
--select * from users where age between 20 and 27
--select * from users where name in('jesse','ander')
--select * from users order by age desc
--delete from users where name is null
--select top 2 * from users
--select max(age) as maxAge from users 
--select count(id) as countOfId from users
--select avg(id) as averageOfId from users
--select sum(id) as sumOfId from users





use practice
--create table players 
--(
--	id int primary key identity,
--	name nvarchar(50),
--	surname nvarchar(50),
--	age tinyint,
--)
--create table positions
--(
--	Id int primary key identity,
--	Name nvarchar(12)
--)

--create table countries
--(
--	Id int primary key identity,
--	Name nvarchar(30)
--)

--insert into players values('paul','pogba',24),
--						('david','de gea',28),
--						('victor','lindelof',26),
--						('diego','dalot',22),
--						('romelu','lukaku',25),
--						('scott','mctominay',24),
--						('phil','jones',26),
--						('marcus','rashford',22),
--						('jesse','lingard',28),
--						('ander','herrera',26)

--insert into positions values('goalkeeper'),
--							('defender'),
--							('midfielder'),
--							('striker')
							
--insert into countries values('england'),
--							('spain'),
--							('france'),
--							('sweden'),
--							('belgium'),
--							('scotland'),
--							('chile')

--alter table players add countryId int

--update players set positionId = 3 where id in (1,6,9,10)
--update players set positionId = 2 where id in (3,4,7)
--update players set positionId = 4 where id in (5,8)
--update players set positionId = 1 where id = 2

--update players set countryId = 3 where id in (1,4)
--update players set countryId = 2 where id in (2,10)
--update players set countryId = 4 where id = 3
--update players set countryId = 5 where id = 5
--update players set countryId = 6 where id = 6
--update players set countryId = 1 where id in (7,8,9)


--select * from players
--select * from positions
--select * from countries

--JOIN
--select
--	players.name + ' ' + players.surname as 'fullname',
--	players.age,
--	positions.name as 'position name',
--	countries.name as 'country name'
--from players
--join positions on players.positionId = positions.Id
--join countries on players.countryId = countries.Id