# DatabaseStructuresAndManagementWithMySQL

## Mission 1: Filtering Data

Lucky Shrub is a medium-sized garden design firm that sells indoor and outdoor plants, making them a one stop shop for clients. These tasks aim to filter data using WHERE clause and logical operators.

#### Task 1

Write a SQL statement to print all records of orders where the cost is $250 or less. 

![1a](https://user-images.githubusercontent.com/106580846/221562610-0d259b27-f4b5-4635-aec4-542887868b33.png)

##### Task 2
Write a SQL statement to print all records of orders where the cost is between $50 and $750. 

![1b](https://user-images.githubusercontent.com/106580846/221562768-38e4b5c7-a2f8-4f7e-b134-a6da1058c42f.png)

#### Task 3 
Write a SQL statement to print all records of orders that have been placed by the client with the id of Cl3 and where the cost of the order is more than $100. 

![1c](https://user-images.githubusercontent.com/106580846/221562876-1247c086-92a0-44ad-9f49-e013cfcebdbe.png)

#### Task 4 
Write a SQL statement to print all records of orders that have a product id of p1 or p2 and the order quantity is more than 2. 

![1d](https://user-images.githubusercontent.com/106580846/221563004-2bfaeab7-df6a-45d9-8168-52254809d010.png)

## Mission 2: Using JOINS
Little Lemon is a family-owned Mediterranean restaurant, focused on traditional recipes served with a modern twist. The Little Lemon database contains many tables of data including Customers and Bookings. The two objectives of this activity are Create an INNER JOIN query & Create a LEFT JOIN query.

#### Task 1: Inner join
Little Lemon want a list of all customers who have made bookings. Write an INNER JOIN SQL statement to combine the full name and the phone number of each customer from the Customers table with the related booking date and booking time from the Bookings table. 

![2a](https://user-images.githubusercontent.com/106580846/221565730-a6c603f6-78c1-4f7e-8033-8ab3f7a9d356.png)

#### Task 2: Left join
Little Lemon want to view information about all existing customers with bookings that have been made so far. This data must include customers who haven’t made any booking yet. 

Write a LEFT JOIN SQL statement to view the customer id from Customers table and the related booking id from the Bookings table. 

![2b](https://user-images.githubusercontent.com/106580846/221565831-f09f8ecd-43ad-4eeb-bb7f-41a59f56e7ac.png)

## Mission 3: Grouping data
Lucky Shrub is a medium-sized garden design firm that sells indoor and outdoor plants, making them a one stop shop for clients. Help Lucky Shrub group and filter grouped data for their reports using the GROUP BY and HAVING clauses.

The Orders table used contains the following columns: OrderID, Department, OrderDate, OrderQty and OrderTotal 

#### Task 1: Group by
Write a SQL SELECT statement to group all records that have the same order date.

![3a](https://user-images.githubusercontent.com/106580846/222155241-5c9ad362-cd40-4e62-ab21-82a4bf46df59.png)
#### Task 2:

Write a SQL SELECT statement to retrieve the number of orders placed on the same day.

![3b](https://user-images.githubusercontent.com/106580846/222155392-0c78f86a-6a3b-4854-92a8-1de41e826968.png)

#### Task 3: 
Write a SQL SELECT statement to retrieve the total order quantities placed by each department.

![3c](https://user-images.githubusercontent.com/106580846/222155485-749aa432-b848-4a46-80c7-3deae45c92f3.png)

#### Task 4: 
Write a SQL SELECT statement to retrieve the number of orders placed on the same day between the following dates: 1st June 2022 and 30th June 2022.

![3d](https://user-images.githubusercontent.com/106580846/222155574-f5be8488-85e4-4d20-ae04-f1c73c6ff3e0.png)

## Mission 4:  MySQL REPLACE statement

#### Task 1: Write a SQL REPLACE statement that inserts two new orders with the following details:

Order 9 data:
OrderID = 9, 
ClientID = "Cl1", 
ProductID = "P1", 
Quantity = 10, 
Cost = 5000

Order 10 data:
OrderID = 10, 
ClientID = "Cl2", 
ProductID = "P2", 
Quantity = 5, 
Cost = 100


#### Task 2: 
Lucky Shrub have noticed that the cost of order number 9 is $5000. This is a mistake. The order must cost $500. You must help them to change it to $500 by writing a relevant REPLACE statement. 

![4a](https://user-images.githubusercontent.com/106580846/222156036-3b534606-80d2-4e0b-97ec-0ca564400709.png)

## Mission 5 Working with constraints
Mangata and Gallo is a jewelry store that specializes in special occasions like engagements, weddings and anniversaries. The company approached you to create three tables for their database called 'Clients', 'Orders' and 'Items' respectively. Each table must have all necessary constraints applied as specified in each task.

The 'Clients' table contains the Client ID, full name and phone number of each client.

The Orders table contains information about each order's Order ID, Client ID, Item ID, Quantity and Cost.

The Items table contains information about the Item ID, Item name, and Item price.

The relationship between the three table is illustrated in the following entity relationship diagram (ER-D).

![image](https://user-images.githubusercontent.com/106580846/222157960-f275f917-d521-4273-81c9-e09ab2a0d663.png)

#### Task 1: Create the Clients table with the following columns and constraints.
* ClientID: INT, NOT NULL and PRIMARY KEY
* FullName: VARCHAR(100) NOT NULL
* PhoneNumber: INT, NOT NULL and UNIQUE

![5a](https://user-images.githubusercontent.com/106580846/222158944-70cd2589-e2d4-405a-af5f-e9effd751a68.png)

#### Task 2: Create the Items table with the following attributes and constraints:
* ItemID: INT, NOT NULL and PRIMARY KEY
* ItemName: VARCHAR(100) and NOT NULL
* Price: Decimal(5,2) and NOT NULL

![5b](https://user-images.githubusercontent.com/106580846/222159025-dc063abf-0f4c-4455-b385-ac93f9c97a04.png)

#### Task 3: Create the Orders table with the following constraints.
* OrderID: INT, NOT NULL and PRIMARY KEY
* ClientID: INT, NOT NULL and FOREIGN KEY
* ItemID: INT, NOT NULL and FOREIGN KEY
* Quantity: INT, NOT NULL and maximum allowed items in each order 3 only
* COST Decimal(6,2) and NOT NULL

![5c](https://user-images.githubusercontent.com/106580846/222159139-a69a0d45-d56d-406f-956f-eef8d622a068.png)

## Mission 6: Changing table structure
#### Task 1
Write a SQL statement that creates the Staff table with the following columns
* StaffID: INT
* FullName: VARCHAR(100)
* PhoneNumber: VARCHAR(10)
![6a](https://user-images.githubusercontent.com/106580846/222161223-2dcfa342-4d4a-4a1b-87ff-8a4ba42492cc.png)

#### Task 2
Write a SQL statement to apply the following constraints to the Staff table:
* StaffID: INT NOT NULL and PRIMARY KEY
* FullName: VARCHAR(100) and NOT NULL
* PhoneNumber: INT NOT NULL
![6b](https://user-images.githubusercontent.com/106580846/222161454-a888ae73-ebc6-4703-bf45-10ac6ff44387.png)

#### Task 3
Write a SQL statement that adds a new column called 'Role' to the Staff table with the following constraints:

Role: VARCHAR(50) and NOT NULL
![6c](https://user-images.githubusercontent.com/106580846/222161551-c6d3e1c4-f40c-45ee-a299-7cc9eeb2dcb1.png)

#### Task 4
Write a SQL statement that drops the Phone Number column from the 'Staff' table.

![6d](https://user-images.githubusercontent.com/106580846/222161645-523290d2-0110-4c09-a7b3-12e376bc21ea.png)

## Mission 7 Working with subqueries
* Working with single row, multiple row and correlated subqueries.
* Using the comparison operators and the ALL and NOT EXISTS operators with subqueries.

#### Task 1: Write a SQL SELECT query to find all bookings that are due after the booking of the guest ‘Vanessa McCarthy’.

![7a](https://user-images.githubusercontent.com/106580846/222162953-b2a5d790-cdee-4fc6-9a24-0859d5b8d30f.png)

#### Task 2: Write a SQL SELECT query to find the menu items that are more expensive than all the 'Starters' and 'Desserts' menu item types.

![7b](https://user-images.githubusercontent.com/106580846/222163257-a8cf86af-8c4e-498f-9cd4-0aafe7cbf92d.png)

#### Task 3: Write a SQL SELECT query to find the menu items that costs the same as the starter menu items that are Italian cuisine.

![7c](https://user-images.githubusercontent.com/106580846/222163315-b28875da-7ec9-4b2e-9bdb-469a8f4d2c7e.png)

#### Task 4: Write a SQL SELECT query to find the menu items that were not ordered by the guests who placed bookings.

![7d](https://user-images.githubusercontent.com/106580846/222163342-85300439-f8c3-4fff-8026-863ff943f65e.png)







