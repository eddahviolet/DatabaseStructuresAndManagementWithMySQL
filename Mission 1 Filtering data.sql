use Lucky_Shrub;
-- Task 1: Write a SQL statement to print all records of orders where the cost is $250 or less. 
select * from Orders where Cost <= 250;

-- Task 2: Display all records of orders where the cost is between $50 and $750. 
select * from Orders where Cost > 50 and Cost < 750;

/*Task 3: Show all records of orders that have been placed by the client with the id of Cl3 and where the 
cost of the order is more than $100. */
select * from Orders where ClientID = "Cl3" and Cost > 100;

-- Task 4 Display records of orders that have a product id of p1 or p2 and the order quantity is more than 2. 
select * from Orders where ProductID = "P1" or ProductID = "P2" and Quantity > 2;

