create table lophoc(
    id int primary key,
    name varchar(100)
);
create table sinhvien(
    id int primary key,
    name varchar(100),
    lh_id int foreign key references lophoc(id)
);

insert into lophoc(id,name)
values(1,'T2210M'),(2,'T2207A');
insert into sinhvien(id,name,lh_id)
values(1,'An',1),(2,'Nam',1),(3,'Minh',null);

select * from lophoc;
select * from sinhvien;

select * from sinhvien A
     inner join lophoc B on A.lh_id = B.id;

select * from sinhvien A
     left join lophoc B on A.lh_id = B.id;

select * from sinhvien A
     right join lophoc B on A.lh_id = B.id;

select * from sinhvien A
     full outer join lophoc B on A.lh_id = B.id;

-- orders join
select * from orders A 
     inner join customers B on A.customers_id = B.id;

select A.*,B.address,B.phone_number from orders A 
     left join customers B on A.customers_id = B.id
	 where B.name = 'Nguyen Van An' order by total asc;

select * from orders_products A
     inner join orders B on A.orders_id = B.id
	 inner join products C on A.product_id = C.id
	 inner join customers D on B.customers_id = D.id;

create view view_all as
 select A.*,B.publish_time,B.total, C.name as product_name, C.unit,C.description,D.name as customer_name, D.phone_number,D.address from orders_products A
     inner join orders B on A.orders_id = B.id
	 inner join products C on A.product_id = C.id
	 inner join customers D on B.customers_id = D.id;
 select * from view_all where quantity > 1;