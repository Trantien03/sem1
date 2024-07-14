create table classes(
	id int primary key identity(1,1),
	name varchar(255) not null,
	room varchar(255) unique
);

create table courses(
	id int primary key identity(1,1),
	name varchar(255) not null
);

create table students(
	id int primary key identity,
	name varchar(255) not null,
	dob datetime not null check (dob > getdate()),
	class_id int not null foreign key references classes(id)
);

create table students_courses(
	student_id int not null foreign key references students(id),
	course_id int not null foreign key references courses(id),
	mark float not null check (mark >=10),
	result varchar(255) not null
);