create database littlelemony;
use littlelemony;

create table MenuItems (ItemID int, Name varchar(200),Type varchar(100), Price int, primary key (ItemID)); 

create table Menus (MenuID int, ItemID int, Cuisine varchar(100), primary key (MenuID,ItemID)); 

create table Bookings (BookingID int,TableNo int,GuestFirstName varchar(100),GuestLastName varchar(100),BookingSlot time, 
  EmployeeID int,primary key (BookingID));  
  
create table TableOrders (OrderID int,TableNo int,MenuID int,BookingID int,BillAmount int,Quantity int,
primary key (OrderID,TableNo));  

insert into MenuItems values(1,'Olives','Starters', 5), (2,'Flatbread','Starters', 5),
(3, 'Minestrone', 'Starters', 8), (4, 'Tomato bread','Starters', 8), (5, 'Falafel', 'Starters', 7), 
(6, 'Hummus', 'Starters', 5), (7, 'Greek salad', 'Main Courses', 15), (8, 'Bean soup', 'Main Courses', 12), 
(9, 'Pizza', 'Main Courses', 15), (10,'Greek yoghurt','Desserts', 7), (11, 'Ice cream', 'Desserts', 6),
(12, 'Cheesecake', 'Desserts', 4), (13, 'Athens White wine', 'Drinks', 25), (14, 'Corfu Red Wine', 'Drinks', 30), 
(15, 'Turkish Coffee', 'Drinks', 10), (16, 'Turkish Coffee', 'Drinks', 10), (17, 'Kabasa', 'Main Courses', 17);

insert into Menus values(1, 1, 'Greek'), (1, 7, 'Greek'), (1, 10, 'Greek'), (1, 13, 'Greek'), (2, 3, 'Italian'), 
(2, 9, 'Italian'), (2, 12, 'Italian'), (2, 15, 'Italian'), (3, 5, 'Turkish'), (3, 17, 'Turkish'), (3, 11, 'Turkish'), 
(3, 16, 'Turkish');

insert into Bookings values (1,12,'Anna','Iversen','19:00:00',1), (2, 12, 'Joakim', 'Iversen', '19:00:00', 1), 
(3, 19, 'Vanessa', 'McCarthy', '15:00:00', 3), (4, 15, 'Marcos', 'Romero', '17:30:00', 4), 
(5, 5, 'Hiroki', 'Yamane', '18:30:00', 2), (6, 8, 'Diana', 'Pinto', '20:00:00', 5); 

insert into TableOrders values (1, 12, 1, 1, 2, 86), (2, 19, 2, 2, 1, 37), (3, 15, 2, 3, 1, 37), 
(4, 5, 3, 4, 1, 40), (5, 8, 1, 5, 1, 43);

-- Task 1: find all bookings that are due after the booking of the guest ‘Vanessa McCarthy’
select * from Bookings where BookingSlot > 
(select BookingSlot from Bookings where GuestFirstName = 'Vanessa' and GuestLastName = 'McCarthy');

-- Task 2: find the menu items that are more expensive than all the 'Starters' and 'Desserts' menu item types
select * from MenuItems where Price > all (select Price from MenuItems where Type in ('Starters', 'Desserts'));

-- Task 3: find the menu items that costs the same as the starter menu items that are Italian cuisine
select * from MenuItems where Price = (select Price from Menus, MenuItems where 
Menus.ItemID = MenuItems.ItemID and MenuItems.Type = 'Starters' and Cuisine = 'Italian');

-- Task 4: Write a SQL SELECT query to find the menu items that were not ordered by the guests who placed bookings.
select * from MenuItems where not exists 
(select * from TableOrders, Menus where TableOrders.MenuID = Menus.MenuID and Menus.ItemID = MenuItems.ItemID);

