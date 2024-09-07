CREATE TABLE Subject (
  Id SERIAL PRIMARY KEY,
  Name VARCHAR(255)UNIQUE
);

INSERT INTO Subject(Name) VALUES ('Algebra');
INSERT INTO Subject(Name) VALUES ('Biology');
INSERT INTO Subject(Name) VALUES ('World History');

CREATE TABLE Grades (
  Id SERIAL PRIMARY KEY,
  Student_id INT,
  Subject_id INT,
  Grade INT CHECK (grade BETWEEN 1 AND 5)
);

INSERT INTO Grades(Student_id, Subject_id, Grade) VALUES (1, 1, 3), (1, 2, 2), (1, 3, 5);
INSERT INTO Grades(Student_id, Subject_id, Grade) VALUES (2, 1, 4), (2, 2, 3), (2, 3, 2);
INSERT INTO Grades(Student_id, Subject_id, Grade) VALUES (3, 1, 5), (3, 2, 4), (3, 3, 3);