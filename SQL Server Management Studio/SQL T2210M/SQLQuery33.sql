create table products(
   name varchar(255) not null,
   desccribe text not null,
   unit text not null,
   price decimal not null check(price >= 0),
   id int primary key identity(1,1)
);
create table customers(
   name varchar(255) not null,
   address varchar(255) not null,
   phone varchar(15) not null unique,
   id int primary key identity(1,1)
);

create table orders( 
   id int primary key identity,
   customers_id int not null foreign key references customers(id),
   publish_time datetime not null check(publish_time <= getdate()),
   total decimal not null default 0
);
create table moneys(
   quantity int not null default 0,
   into_money decimal not null,
   orders_id int foreign key references orders(id),
   products_id int foreign key references products(id)
);