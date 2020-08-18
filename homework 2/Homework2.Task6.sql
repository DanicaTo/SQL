------------------------ Homework Task 6 ---------------------------

select c.[Name] as CourseName, a.[Name] as AchievementTypeName
from [dbo].[Course] c
cross join [dbo].[AchievementType] a

select DISTINCT t.[FirstName] as TeacherName, g.Grade as Grade
from dbo.[Teacher] t
inner join dbo.Grade g on t.Id = g.TeacherID

select DISTINCT t.[FirstName] as TeacherName
from dbo.Teacher t
inner join [dbo].[Grade] g on t.ID = g.TeacherID
where g.Grade is null

select s.[FirstName] as StudentName
from dbo.Student s
right join dbo.Grade g on s.ID = g.ID
where g.Grade is null

