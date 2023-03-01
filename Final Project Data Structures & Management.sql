create database if not exists Little_Lemon3;
use Little_Lemon3;

create table Customers(CustomerID int not null primary key, FullName varchar(100) not null, PhoneNumber int not null unique);
create table Bookings (BookingID int, BookingDate date,TableNumber int, NumberOfGuests int,CustomerID int); 
create table Courses (CourseName varchar(255) primary key, Cost decimal(4,2));

insert into Customers(CustomerID, FullName, PhoneNumber) values (1, "Vanessa McCarthy", 0757536378), 
(2, "Marcos Romero", 0757536379), (3, "Hiroki Yamane", 0757536376), (4, "Anna Iversen", 0757536375), 
(5, "Diana Pinto", 0757536374), (6, "Altay Ayhan", 0757636378), (7, "Jane Murphy", 0753536379),      
(8, "Laurina Delgado", 0754536376), (9, "Mike Edwards", 0757236375), (10, "Karl Pederson", 0757936374);

insert into Bookings (BookingID, BookingDate, TableNumber, NumberOfGuests, CustomerID) 
values (10, '2021-11-10', 7, 5, 1), (11, '2021-11-10', 5, 2, 2),  (12, '2021-11-10', 3, 2, 4), 
(13, '2021-11-11', 2, 5, 5),  (14, '2021-11-11', 5, 2, 6),  (15, '2021-11-11', 3, 2, 7), 
(16, '2021-11-11', 3, 5, 1),  (17, '2021-11-12', 5, 2, 2),  (18, '2021-11-12', 3, 2, 4), 
(19, '2021-11-13', 7, 5, 6),  (20, '2021-11-14', 5, 2, 3),  (21, '2021-11-14', 3, 2, 4);

insert into Courses (CourseName, Cost) values ("Greek salad", 15.50),("Bean soup", 12.25), 
("Pizza", 15.00), ("Carbonara", 12.50), ("Kabasa", 17.00), ("Shwarma", 11.30);

-- Task 1: Filter data using the WHERE clause and logical operators.
/*Display all records from Bookings table for the following bookings dates using the BETWEEN operator: 
2021-11-11, 2021-11-12 and 2021-11-13.*/
select * from Bookings where BookingDate between '2021-11-11' and '2021-11-13';

-- Task 2: Create a JOIN query
/*Create a JOIN SQL statement on the Customers and Bookings tables that prints the customers full names and related 
bookings IDs from the date 2021-11-11*/

select Customers.FullName, Bookings.BookingID from Customers RIGHT JOIN Bookings 
on Customers.CustomerID = Bookings.CustomerID where BookingDate = '2021-11-11';

-- Task 3: Create a GROUP BY query
/*print the bookings dates from Bookings table to show the total number of bookings
 placed on each of the printed dates using the GROUP BY BookingDate*/

select BookingDate, count(BookingDate) from Bookings group by BookingDate;

-- Task 4: Create a REPLACE statement
/*Create a SQL REPLACE statement that updates the cost of the Kabsa course from $17.00 to $20.00. */

replace into Courses (CourseName, Cost) values ("Kabasa", 20.00);

-- Task 5: Create constraints
/*Create a new table called "DeliveryAddress" in the Little Lemon database with the required constraints
•	ID: INT PRIMARY KEY
•	Address: VARCHAR(255) NOT NULL
•	Type: NOT NULL DEFAULT "Private"
•	CustomerID: INT NOT NULL FOREIGN KEY referencing CustomerID in the Customers table*/

create table DeliveryAddress(ID int primary key, Address varchar(255) not null, Type varchar(100) not null default "Private",     
CustomerID int not null, foreign key (CustomerID) references Customers(CustomerID));
show columns from DeliveryAddress;

-- Task 6: Alter table structure
/*Create a SQL statement that adds a new column called 'Ingredients' to the Courses table; Ingredients varchar(255)*/
alter table Courses add column Ingredients varchar(255);
show columns from Courses;

-- Task 7: Create a subquery
/*Create subquery that prints the full names of all customers who made bookings in the restaurant on the following date:
 2021-11-11*/
 
select FullName from Customers where
(select CustomerID from Bookings where Customers.CustomerID = Bookings.CustomerID and BookingDate = "2021-11-11");

-- Task 8: Create a virtual table
/*Create the "BookingsView" virtual table to show all bookings IDs, bookings dates and the number of guests for bookings 
made in the restaurant before 2021-11-13 and where number of guests is larger than 3.*/
create view BookingsView as select BookingID, BookingDate, NumberOfGuests from Bookings where NumberOfGuests > 3 and 
BookingDate < "2021-11-13";
select * from bookingsView;

-- Task 9: Create a stored procedure
/*Create a stored procedure called 'GetBookingsData'. That contains one date parameter called "InputDate".*/
create procedure GetBookingsData (InputDate DATE) select * from Bookings where BookingDate = InputDate;

call GetBookingsData ("2021-11-13");

-- Task 10: Use the String function
/*Create a query using string function to list "Booking Details" including booking ID, booking date and number of guests. 
The data must be listed in this format >> ID: 10, Date: 2021-11-10, Number of guests: 5 <<*/
select concat("ID: ", BookingID,", Date: ", BookingDate,", Number of guests: ", NumberOfGuests) as
"Booking Details" from Bookings;

