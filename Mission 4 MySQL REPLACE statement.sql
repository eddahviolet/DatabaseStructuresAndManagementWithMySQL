create database Lucky_Shruby;
use Lucky_shruby;
create table Orders (OrderID int not null primary key, ClientID varchar(10), ProductID varchar(10), Quantity int, 
Cost decimal(6,2));

insert into Orders (OrderID, ClientID, ProductID, Quantity, Cost) values (1, "Cl1", "P1", 10, 500), 
(2, "Cl2", "P2", 5, 100), (3, "Cl3", "P3", 20, 800), (4, "Cl4", "P4", 15, 150), (5, "Cl3", "P3", 10, 450), 
(6, "Cl2", "P2", 5, 800), (7, "Cl1", "P4", 22, 1200), (8, "Cl1", "P1", 15, 150);

-- Task 1: Write a SQL REPLACE statement that inserts two new orders 
replace into Orders (OrderID, ClientID, ProductID, Quantity, Cost) values (9, "Cl1", "P1", 10, 5000), 
(10, "Cl2", "P2", 5, 100);

-- Task 2: change a record
replace into Orders set OrderID = 9, ClientID = "Cl1", ProductID = "P1", Quantity = 10, Cost = 500;