create table products(
id int primary key identity(1,1),
name varchar(255) not null unique,
description text,
unit varchar(255) not null,
price decimal not null check(price >=0) default 0
);

create table customers(
name varchar(255) not null,
address varchar(255) not null,
phone_number varchar(20) not null unique,
id int primary key identity(1,1)
);
create table orders(
id int primary key identity(1,1),
customers_id int not null foreign key references customers(id),
publish_time datetime not null check(publish_time <= getdate()),
total decimal(12,4) not null check(total >=0)
);
create table orders_products(
quantity int not null check(quantity >0),
price decimal(12,4) not null check(price >=0),
orders_id int not null foreign key references orders(id),
product_id int not null foreign key references products(id)
);








insert into products(name,description,unit,price)
values('May tinh T450','May nhap moi','Chiec',1000);

insert into products(name,description,unit,price)
values('Dien thoai Nokia 567',' Dien thoai dang hot','chiec',200),
('May in Samsung','May in dang e','Chiec',100);

select * from products;

insert into customers(name,address,phone_number)
values('Nguyen Van An','111 Nguyen Trai, Thanh Xuan, HN','123456789');
select * from customers;
 

insert into orders(publish_time,total,customers_id)
values('2009-11-18',1500,'1'),
('2009-10-19',1500,'1');
select * from orders;

insert into orders_products(quantity,price,orders_id,product_id)
values(1,1000,1,1),
(2,200,1,2),
(1,100,1,3);
select * from orders_products;

update products set price = 2000,unit = 'Cai' where id = 1;

delete from products where id = 4;


------------------------------------------------------
select * from products;

--liệt kê thông thường
select id as masp,name,description,price from products

-- sắp xếp
select * from products order by price asc;
select * from products order by price desc;

-- lấy số lượng cụ thể
select top 2 * from products order by price desc;
select top 50 percent * from products order by price desc;

-- lọc dữ liệu
select * from products where price > 100;
select * from products where price > 100 and price < 2000;
select * from products where price > 100 or unit = 'Chiec';
select * from products where id = 3 or id = 4 or id = 15 ;
select * from products where id in(1,3,4,15);

-- tìm kiếm 
select * from products where name like 'May tinh%';
select * from products where name like '%T450%';
select * from products where name like '%tinh%' or description like '%tinh%';

-- chuẩn chỉnh
select top 1 * from products where name like '%tinh%' order by price desc, name asc;

-- thống kê
select count(*) as soluong from products;
select sum(price) as tongtien from products;
select avg(price) as tb from products;

select count(*) as soluong from orders;
select sum(total) as tongtien from orders;
select avg(total) as tb from orders;

select count(*) as soluong, customers_id from orders group by customers_id;

select * from customers;
select * from orders;

-- tìm id theo tên khách hàng: Nguyen Van An
select * from customers where name = 'Nguyen Van An';
select * from orders where customers_id =1;

--lam 1 lan SQL
--subquery
select * from orders where customers_id = (select id from customers where name = 'Nguyen Van An');


select * from products where id in
(select product_id from orders_products where orders_id in
   (select id from orders where customers_id in
      (select id from customers where name = 'Nguyen Van An')
   )
);


select * from orders;