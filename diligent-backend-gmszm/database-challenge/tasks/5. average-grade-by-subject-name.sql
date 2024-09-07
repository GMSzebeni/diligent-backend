SELECT Subject.name subject, CAST(AVG(Grades.grade) AS DECIMAL(10,2)) average
FROM Grades
JOIN Subject ON Grades.subject_id = Subject.id
GROUP BY Subject.name;


/*or if you wanted me to list just one subject and it's average:*/
SELECT Subject.name subject, CAST(AVG(Grades.grade) AS DECIMAL(10,2)) average
FROM Grades
JOIN Subject ON Grades.subject_id = Subject.id
WHERE Subject.id = 1
GROUP BY Subject.name;