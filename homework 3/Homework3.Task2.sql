-------------- Homework 3 Task 2 ---------------------

select TeacherID, count (Grade) as AllGrades
from dbo.Grade
group by TeacherID
having count(Grade) > 200

select TeacherID, count (Grade) as AllGrades
from dbo.Grade
where StudentID <100
group by TeacherID
having count(Grade) > 50

select StudentID, Max (Grade) as Total, AVG(Grade) as Average
from dbo.Grade
group by StudentID
having Max (Grade) = AVG (Grade)

select StudentID, n.FirstName as StudentName, n.LastName as StudentLastName, Max (Grade) as Total, AVG(Grade) as Average
from dbo.Grade g
inner join dbo.Student n on n.ID =g.StudentID
group by StudentID, n.FirstName, n.LastName
having Max (Grade) = AVG (Grade)