----------------------------- Homework 5 Task 1---------------------

drop function if exists dbo.fn_ExamPassed;

create function dbo.fn_ExamPassed (@TeacherId int, @CourseId int)
returns @output table (StudentFirstName nvarchar(20), StudentLastName nvarchar(20), Grade int, CreatedDate datetime)
as
begin 

insert into @output
select s.FirstName as StudentFirstName, s.LastName as StudentLastName, g.Grade, g.CreatedDate
from dbo.Student s
inner join dbo.Grade g on s.ID = g.ID
where TeacherID = @TeacherId
and CourseID = @CourseId

return 
end

--test--
select * from dbo.fn_ExamPassed (3, 3)

