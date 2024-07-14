create table levels(
	level text not null,
	id int primary key identity(1,1)
);
create table departments(
	name text not null,
	id int primary key identity(1,1)
);
create table devices(
	name varchar(255) not null,
	id int primary key identity(1,1)
);
create table salaries(
	salary varchar(255) not null,
	money decimal(12,4) not null,
	id int primary key identity(1,1)
);
create table employee(
	devices_id int not null foreign key references devices(id),
	amount varchar(10),
	id int primary key identity(1,1)
);
create table lists(
	name varchar(50) not null,
	birthday datetime check(birthday < getdate()),
	address text not null,
	phone_number varchar(255) not null unique,
	levels_id int not null foreign key references levels(id),
	departments_id int not null foreign key references departments(id),
	devices_id int not null foreign key references devices(id),
	salaries_id int not null foreign key references salaries(id)
);