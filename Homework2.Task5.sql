---------------------- Homework Task 5------------------------
alter table [dbo].[Course] with check 
add constraint FK_Course_Grade_Id
foreign key ([GradeId])
references Grade ([Id])



