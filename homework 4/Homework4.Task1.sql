----------------------- Homework 4 Task 1 -----------------------------
--
declare @FirstName nvarchar (100)
set @FirstName = 'Antonio'

select * from dbo.Student
where FirstName = @FirstName

--
declare @StudentList table 
(StudentId int, FirstName nvarchar(100), DateOfBirth date)

insert into @StudentList
select ID, FirstName, DateOfBirth
from dbo.Student
where Gender = 'F'

select * from @StudentList

--
create table #StudentList
(LastName nvarchar(100), EnrolledDate date)

insert into #StudentList
select LastName, EnrolledDate
from dbo.Student
where Gender = 'M' and LastName like 'A%'

select * from #StudentList
where Len(LastName) = 7

drop table #StudentList

--
select * from dbo.Teacher
where Len(FirstName) <5