CREATE TABLE Homeroom (
  Id SERIAL PRIMARY KEY,
  Name VARCHAR(255) UNIQUE
);

INSERT INTO Homeroom(Name) VALUES ('9A');
INSERT INTO Homeroom(Name) VALUES ('9B');

CREATE INDEX idx_name ON Homeroom (Name);