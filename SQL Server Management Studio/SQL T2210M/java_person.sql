use java_person

select * from Person
insert into Person(NAME,EMAIL,ADDRESS,PHONE)
values('dsfsf','dsfgd@gmail.com','nam dinh', 0987654567)

create table tblTask(
   ID int PRIMARY KEY identity(1,1),
   Name varchar(50),
   Position varchar(255),
   Salary int
);

insert into tblTask(Name,Position,Salary)
values('tien','Manager',5000) 
select * from tblTask

truncate table Person

