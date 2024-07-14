CREATE TABLE Hotels (
    hotel_id INT PRIMARY KEY IDENTITY(1, 1),
    name VARCHAR(255),
    address VARCHAR(255),
    phone_number VARCHAR(20),
    email VARCHAR(255),
    website VARCHAR(255),
    number_of_rooms INT
);

INSERT INTO Hotels(name, address,phone_number,email,website, number_of_rooms)
 VALUES ('Intercontinental Danang Sun Penisula Resort ', 'Da Nang', '09123456789','resortdanang@gmail.com','resortdanang.vn',123),
 ('Metropole Ha Noi', 'Ha Noi', '01234567890','metropolehanoi@gmail.com','metropolehanoi.vn',234) 

 SELECT * FROM Hotels


 CREATE TABLE Customers (
    customer_id INT PRIMARY KEY IDENTITY(1, 1),
    name VARCHAR(255),
    address VARCHAR(255),
    phone_number VARCHAR(20),
    email VARCHAR(255)
);

INSERT INTO Customers(name,address,phone_number,email)
VALUES('tien','Ha Noi','08123456789','tien@gmail.com'),
('peter','Da Nang','07123456789','peter@gmail.com');

SELECT * FROM Customers


CREATE TABLE Rooms (
    room_id INT PRIMARY KEY IDENTITY(1, 1),
    hotel_id INT,
    room_type VARCHAR(50),
    price DECIMAL(10, 2),
    status VARCHAR(20),
    CONSTRAINT fk_hotel
        FOREIGN KEY (hotel_id)
        REFERENCES Hotels(hotel_id)
        ON DELETE CASCADE
);

INSERT INTO Rooms(hotel_id,room_type,price,status)
VALUES(1,'VIP',9,'Vacancy'),
(2,'VIP',8,'Fully-booked');

SELECT * FROM Rooms


CREATE TABLE Bookings (
    booking_id INT PRIMARY KEY IDENTITY(1, 1),
	hotel_id int foreign key references Hotels(hotel_id),
	customer_id int foreign key references Customers(customer_id),
	room_id int foreign key references Rooms(room_id),
    checkin_date DATE,
    checkout_date DATE,
    number_of_adults INT,
    number_of_children INT,
)

INSERT INTO Bookings(hotel_id,customer_id,room_id,checkin_date,checkout_date,number_of_adults,number_of_children)
VALUES (1,1,1,'2015-02-19','2015-02-20',2,1); 

INSERT INTO Bookings(hotel_id,customer_id,room_id,checkin_date,checkout_date,number_of_adults,number_of_children)
VALUES (2,2,2,'2016-03-19','2016-03-20',1,2);

SELECT * FROM Bookings