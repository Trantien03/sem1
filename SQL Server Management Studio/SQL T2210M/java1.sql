

CREATE TABLE Students
(
	ID INT PRIMARY KEY IDENTITY(1, 1),
	NAME VARCHAR(255),
	EMAIL VARCHAR(50),
	LEVEL INT 
)

SELECT * FROM Students

INSERT INTO Students(Name, Email, Level)
VALUES ('Tuan', 'tuan@gmail.com', 3)

INSERT INTO Students(Name, Email, Level)
VALUES ('Nam', 'nam@gmail.com', 3)

INSERT INTO Students(Name, Email, Level)
VALUES ('Son', 'son@gmail.com', 3)