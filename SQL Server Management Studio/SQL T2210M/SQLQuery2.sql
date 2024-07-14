create table productss(
id int primary key identity(1,1),
name varchar(255) not null unique,
description text,
unit varchar(255) not null,
price decimal not null check(price >=0) default 0
);

create table customer(
name varchar(255) not null,
address varchar(255) not null,
phone_number varchar(20) not null unique,
id int primary key identity(1,1)
);
create table orderss(
id int primary key identity(1,1),
customers_id int not null foreign key references customer(id),
publish_time datetime not null check(publish_time <= getdate()),
total decimal(12,4) not null check(total >=0)
);
create table orders_products(
quantity int not null check(quantity >0),
price decimal(12,4) not null check(price >=0),
orders_id int not null foreign key references orderss(id),
product_id int not null foreign key references productss(id)
);

