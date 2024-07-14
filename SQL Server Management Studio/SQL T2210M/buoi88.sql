create table products(
id varchar(255) primary key,
namesp varchar(255) not null unique,
description text,
unit varchar(255) not null,
quantity_available decimal not null check(quantity_available >=0) default 0,
price decimal not null check(price >=0) default 0
);

create table manufacturers(
nameh varchar(255) not null,
address varchar(255) not null,
phone_number varchar(20) not null unique,
id varchar(255) primary key
);

create table orders_products(
manufacturer_id varchar(255) not null foreign key references manufacturers(id),
product_id varchar(255) not null foreign key references products(id)
);

insert into products(id,namesp,description,unit,price,quantity_available)
values(1,'Máy Tính T450','Máy nhập cũ','Chiếc', 1000,10),
(2,'Điện Thoại Nokia5670','Điện thoại đang hot','Chiếc',200,200),
(3,'Máy In Samsung 450','Máy in đang loại bình','Chiếc',100,10),
(4,'Máy In Canon 2900','Máy in đang ế','Chiếc',100,20);
select * from products;

insert into manufacturers(nameh,address,phone_number,id)
values('Asus','USA','983232',123),
('MacBook','USA','921356',124),
('Dell','USA','923456',125);
select * from manufacturers;

insert into orders_products(manufacturer_id,product_id)
values(123,1),(123,2),(123,3),(124,1),(125,1);
select * from orders_products;

-- cau 4 
select * from manufacturers;
select * from products;

-- cau 5
select * from manufacturers order by nameh desc;
select * from products order by price desc;
select * from manufacturers where nameh = 'Asus';
select * from products where quantity_available < 11;
select * from products,manufacturers where nameh = 'Asus';

-- cau 6
select COUNT(*) as soHang from manufacturers;
select COUNT(*) as soluongsp from products;
select sum(quantity_available) as tongsoluong from products;

