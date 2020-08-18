---------------------- Homework Task 4------------------------

alter table GradeDetails
add constraint DF_GradeDetails_AchievementMaxPoints
default 100 for [AchievementMaxPoints]

alter table GradeDetails with check 
add constraint CHK_GradeDetails_AchievementPoints 
check (AchievementPoints <= AchievementMaxPoints);

Alter table AchievementType with check
add constraint UC_AchievementType_Names Unique ([Name])


