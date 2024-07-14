create table books(
      name varchar(255) not null unique,
	  id int primary key identity(1,1)
);
create table publishing_company(
      name varchar(255) not null,
	  id int primary key identity(1,1),
      address varchar(255) not null
);
create table authorss(
    name varchar(255) not null,
    id int primary key identity(1,1)
);
create table contents(
    book_code varchar(255) not null,
	book_title varchar(255) not null unique,
	author_id int not null foreign key references authorss(id),
	summary_content varchar(255) not null,
	publishing_year varchar(255) not null check(publishing_year >= getdate()),
	editions varchar(255) not null check(editions >= 0),
	publishing_company_id int not null foreign key references publishing_company(id),
	publisher_address text not null,
	price text not null,
	amounts varchar(255) not null,
	book_id int not null foreign key references books(id)
);
