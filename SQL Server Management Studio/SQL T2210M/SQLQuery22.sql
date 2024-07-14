create table categories(
	name varchar(100) not null unique,
    id int primary key identity(1,1)
);
create table authors(
	name varchar(225),
    id int primary key identity(1,1)
);
create table subcategories(
	name varchar(225),
    id int primary key identity(1,1),
	category_id int foreign key references categories(id)
);
create table posts(
    title varchar(255) not null,
	description varchar(255),
	publish_time datetime not null,
	thumbnail varchar(255) default 'abc.png',
	content text,
	id int primary key,
	category_id int not null foreign key references categories(id),
    subcategory_id int not null foreign key references subcategories(id),
	author_id int not null foreign key references authors(id)
);
create table comments(
    username varchar(255) not null,
	commnent text not null,
	posts_time datetime not null check(posts_time <= getdate()),
	like_number int not null check(like_number >=0) default 0,
	id int primary key,
	post_id int foreign key references posts(id)
);