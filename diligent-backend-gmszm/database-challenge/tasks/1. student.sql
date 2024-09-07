CREATE TABLE Student (
  Id SERIAL PRIMARY KEY,
  Name VARCHAR(255),
  Email VARCHAR(255)
);

INSERT INTO Student(Name, Email) VALUES ('John', 'john@school.com');
INSERT INTO Student(Name, Email) VALUES ('Adam', 'adam@school.com');
INSERT INTO Student(Name, Email) VALUES ('Lucy', 'lucy@school.com');