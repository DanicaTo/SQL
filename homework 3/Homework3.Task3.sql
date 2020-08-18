------------------- Homework 3 Task 3 -------------------
drop view if exists vv_StudentGrades;

create view VV_StudentGrades
as
select StudentID, count (Grade) as AllGrades
from dbo.Grade g
group by StudentID

alter view VV_StudentGrades
as
select n.FirstName, n.LastName, count (Grade) as AllGrades
from dbo.Grade g
inner join dbo.Student n on g.StudentID = n.ID
group by n.FirstName, n.LastName

select * from VV_StudentGrades
order by AllGrades desc

drop view if exists vv_StudentGradeDetails;

create view VV_StudentGradeDetails
as
select n.FirstName + N' ' + n.LastName as StudentName, COUNT (g.CourseID) as CourseCount
from dbo.Grade g
inner join Student as n on g.StudentID = n.ID
inner join GradeDetails as gd on g.ID = gd.GradeID
inner join AchievementType as a on gd.AchievementTypeId = a.ID
where a.Name = 'Ispit'
group by n.FirstName, n.LastName