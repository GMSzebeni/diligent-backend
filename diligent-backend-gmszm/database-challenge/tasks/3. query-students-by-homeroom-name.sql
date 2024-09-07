ALTER TABLE Student
ADD Homeroom_Id INT;

UPDATE Student
SET Homeroom_Id = 1
WHERE Id = 1 OR Id = 2;

UPDATE Student
SET Homeroom_Id = 2
WHERE Id = 3;

SELECT Student.name 
FROM Student 
JOIN Homeroom ON Student.homeroom_id = Homeroom.id 
WHERE Homeroom.name = '9A';

SELECT Student.name 
FROM Student 
JOIN Homeroom ON Student.homeroom_id = Homeroom.id 
WHERE Homeroom.name = '9B';