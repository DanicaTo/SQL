------------------ Homework 3 Task 1 --------------------------

select count(Grade) as AllGrades
from dbo.[Grade]

select TeacherID, count (Grade) as AllGrades
from dbo.Grade
group by TeacherID

select TeacherID, count (Grade) as AllGrades
from dbo.Grade
where StudentID < 100
group by TeacherID

select StudentID, Max (Grade) as AllGrades, AVG (Grade) as Average
from dbo.Grade
group by StudentID