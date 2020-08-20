----------------------- Homework 4 Task 2 -------------------

create function dbo.fn_FormatStudentName (@StudentId int)
returns nvarchar(100)
as
begin

declare @Output nvarchar(100)

select @Output = SUBSTRING (FirstName,1,1) + '.' + LastName
from dbo.Student
where ID = @StudentId

return @Output

end

--test--
select *, dbo.fn_FormatStudentName (id) as FunctionOutput
from dbo.Student