create table Customer(
  CustomerId int primary key ,
  Name nvarchar(50) not null,
  City nvarchar(50) not null,
  Country nvarchar(50) not null,
  Phone nvarchar(15) not null,
  Email nvarchar(50) not null,
);

create table CustomerAccount(
  AccountNumber char(9) primary key ,
  CustomerId int foreign key references Customer(CustomerId),
  Balnance money,
  MinAccount money not null
);
create table CustomerTransaction(
  TransactionId int primary key,
  AccountNumber char(9) not null foreign key references CustomerAccount(AccountNumber),
  TransactionDate smalldatetime not null,
  Amount money not null,
  DepositorWithdraw bit
);

insert into Customer(CustomerId ,Name,City,Country,Phone,Email)
values
       ('123891','Tran van Tien','Hanoi','Viet Nam','889456124','tantien@gmail.com'),
	   ('123892','Tran van A','Hanoi','Viet Nam','889456123','tana@gmail.com')
select * from Customer;

insert into CustomerAccount(AccountNumber,CustomerId,Balnance,MinAccount)
values('70006','123891','900000','800000'),
      ('80006','123892','800000','700000');
select * from CustomerAccount;

insert into CustomerTransaction(TransactionId,AccountNumber,TransactionDate, Amount, DepositorWithdraw)
values('12345','70006','2022/1/11','20000','1'),
      ('12346','80006','2022/2/12','30000','1');
select * from CustomerTransaction;

-- y4
select * from Customer where City like 'Hanoi';

-- y5
 select * from CustomerAccount where CustomerId in 
(select CustomerId from Customer where Name like 'Tran van Tien');

select * from CustomerAccount where CustomerId in 
(select CustomerId from Customer where Phone like '889456124');

select * from CustomerAccount where CustomerId in 
(select CustomerId from Customer where Email like 'tana@gmail.com');

select  * from CustomerAccount where AccountNumber like  '70006';

select  * from CustomerAccount where Balnance = '900000';

--y6
ALTER TABLE CustomerTransaction
ADD CONSTRAINT CHK_TransactionAmount
CHECK (Amount > 0 AND Amount <= 1000000);

--y7
CREATE VIEW vCustomerTransactions AS
SELECT c.Name, ca.AccountNumber, ct.TransactionDate, ct.Amount, ct.DepositorWithdraw
FROM Customer c
INNER JOIN CustomerAccount ca ON c.CustomerID = ca.CustomerID
INNER JOIN CustomerTransaction ct ON ca.AccountID = ct.AccountID;
