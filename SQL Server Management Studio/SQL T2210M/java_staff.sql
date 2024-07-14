create table Person (
id int primary key identity(1,1),
name varchar(255),
Bonus varchar(50),
Salary varchar(50)
);

select*from Person

insert into Person(name, Bonus, Salary)
values('tien', 500, 8000);

