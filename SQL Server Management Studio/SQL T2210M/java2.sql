CREATE TABLE Person
(
	ID INT PRIMARY KEY IDENTITY(1, 1),
	NAME VARCHAR(255),
	EMAIL VARCHAR(50),
	LEVEL INT 
)

SELECT * FROM Person

INSERT INTO Person(Name, Email, Level)
VALUES ('Tuan', 'tuan@gmail.com', 3)

INSERT INTO Person(Name, Email, Level)
VALUES ('Nam', 'nam@gmail.com', 3)

INSERT INTO Person(Name, Email, Level)
VALUES ('Son', 'son@gmail.com', 3)

CREATE PROCEDURE spGetPerson(@id INT)
AS
BEGIN
	SELECT Id, Name, Email, Level FROM Person
	WHERE Id = @id
END