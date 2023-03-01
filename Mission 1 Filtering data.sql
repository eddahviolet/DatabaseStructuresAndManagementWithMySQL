use Lucky_Shrub;
create table Orders (OrderID int not null primary key, ClientID varchar(10), ProductID varchar(10),
Quantity int, Cost decimal(6,2));
 
 insert into Orders (OrderID, ClientID, ProductID , Quantity, Cost) values (1, "Cl1", "P1", 10, 500), 
 (2, "Cl2", "P2", 5, 100), (3, "Cl3", "P3", 20, 800), (4, "Cl4", "P4", 15, 150), (5, "Cl3", "P3", 10, 450),
 (6, "Cl2", "P2", 5, 800), (7, "Cl1", "P4", 22, 1200), (8, "Cl3", "P1", 15, 150), (9, "Cl1", "P1", 10, 500),
 (10, "Cl2", "P2", 5, 100);
 
-- Task 1: Write a SQL statement to print all records of orders where the cost is $250 or less. 
select * from Orders where Cost <= 250;

-- Task 2: Display all records of orders where the cost is between $50 and $750. 
select * from Orders where Cost > 50 and Cost < 750;

/*Task 3: Show all records of orders that have been placed by the client with the id of Cl3 and where the 
cost of the order is more than $100. */
select * from Orders where ClientID = "Cl3" and Cost > 100;

-- Task 4 Display records of orders that have a product id of p1 or p2 and the order quantity is more than 2. 
select * from Orders where ProductID = "P1" or ProductID = "P2" and Quantity > 2;

