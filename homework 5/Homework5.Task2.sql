----------------------------- Homework 5 Task 2---------------------
drop function if exists dbo.fn_ExamPassedAvg;

create function dbo.fn_ExamPassedAvg (@TeacherId int)
returns @Result table (StudentFirstName nvarchar(20), StudentLastName nvarchar(20), AvgGrade int)
as
begin 

insert into @Result
select s.FirstName as StudentFirstName, s.LastName as StudentLastName, avg(g.Grade)
from dbo.Student s
inner join dbo.Grade g on s.ID = g.ID
where TeacherID = @TeacherId
group by s.FirstName, s.LastName, g.Grade 

return 
end

--test--
select * from dbo.fn_ExamPassedAvg (2)
