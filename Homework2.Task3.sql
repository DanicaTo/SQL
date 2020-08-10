------------------- Homework Task 3---------------

select FirstName from Teacher
union all
select FirstName from Student

select LastName from Teacher
union
select LastName from Student

select FirstName from Teacher
intersect
select FirstName from Student