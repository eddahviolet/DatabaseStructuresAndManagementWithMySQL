use LittleLemonDB;

-- Task 1: Inner join Bookings and Customers Table
select Customers.CustomerFirstName, Customers.PhoneNumber, Bookings.BookingDate, Bookings.TableNumber 
from Customers inner join Bookings on Customers.CustomerID = Bookings.CustomerID;

-- Task 2: Left join Bookings and Customers Table
select Customers.CustomerID, Bookings.BookingID from Customers left join Bookings 
on Customers.CustomerID = Bookings.CustomerID;
