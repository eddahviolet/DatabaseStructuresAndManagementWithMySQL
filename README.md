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

## Mission 4: MySQL REPLACE statement

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

## Mission 5: Working with constraints
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

## Mission 7: Working with subqueries
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

## Mission 8: Working with views in MySQL
The Orders table contains information about the Order ID, Client ID, Product ID, Quantity and Cost 

The main objectives of this activity are:

*	Create a virtual table.
*	Update the base table using the virtual table.
*	Rename the virtual table.
*	Drop the virtual table.


#### Task 1
Write a SQL statement to create the OrdersView Virtual table based on the Orders table to t include the following columns: Order ID, Quantity and Cost

![8a](https://user-images.githubusercontent.com/106580846/222165281-51bf9477-d5ba-4a51-a3cc-3eb79fd229dc.png)

#### Task 2
Write a SQL statement that utilizes the ‘OrdersView’ virtual table to Update the base Orders table. In the UPDATE TABLE statement, change the cost to 200 where the order id equals 2. 

![8b](https://user-images.githubusercontent.com/106580846/222165477-aba9106e-378e-47bf-a6f6-32784416c864.png)

#### Task 3
Write a SQL statement that changes the name of the ‘OrdersView’ virtual table to ClientsOrdersView.

![8c](https://user-images.githubusercontent.com/106580846/222165753-01ed96e7-711f-4073-98f9-3f6b304942c2.png)

#### Task 4
Write a SQL statement to delete the Orders virtual table.

![8di](https://user-images.githubusercontent.com/106580846/222165779-33b2ddd4-cfba-4fa9-b4fa-945cc72ee5a6.png)
![8dii](https://user-images.githubusercontent.com/106580846/222165816-e45d9107-18b5-4d36-8a03-961a0a583d13.png)

## Mission 9: Working with MySQL functions
Help to make it easier for M&G staff to format and filter data using MySQL string, Math, Date and Comparison functions for their reports. 

Use the item and mg_orders tables

#### Task 1: 
Write a SQL SELECT query using appropriate MySQL string functions to list items, quantities and order status in the following format:
*	Item name–quantity–order status
*	Item name should be in lower case. Order status should be in upper case.

![9a](https://user-images.githubusercontent.com/106580846/222166729-c37dc411-2aee-40fe-b062-84b49c98154d.png)

#### Task 2: 
Write a SQL SELECT query using an appropriate date function and a format string to find the name of the weekday on which M&G’s orders are to be delivered.

![9b](https://user-images.githubusercontent.com/106580846/222166804-00bdc5e3-b8ab-4e2e-9f5e-74c1e812cb1a.png)

#### Task 3: 
Write a SQL SELECT query that calculates the cost of handling each order. This should be 5% of the total order cost. Use an appropriate math function to round that value to 2 decimal places.

![9c](https://user-images.githubusercontent.com/106580846/222166863-11d18cd2-5aac-4a30-8c5a-e51d4286cfc3.png)

####  Task 4: 
Review the query that you wrote in the second task. Use an appropriate comparison function to filter out the records that do not have a NULL value in the delivery date column.

![9d](https://user-images.githubusercontent.com/106580846/222166912-da57cc6b-9409-407e-ba42-37f829df385b.png)

## Mission 10: Working with procedures

Help Lucky Shrub access relevant data from the Orders table in their database using stored procedures.

#### Task 1
Write a SQL statement that creates a stored procedure called 'GetOrdersData' which retrieves all data from the Orders table.

Call the “GetOrdersData” to show all orders 

![10a](https://user-images.githubusercontent.com/106580846/222167545-c205dffb-8901-4f7f-958f-e527d58395b4.png)

#### Task 2
Write a SQL statement that creates a stored procedure called “GetListOfOrdersInRange” that procedure must contain two parameters that determine the range of retrieved data based on the user input of two cost values “MinimumValue” and “MaximumValue”.

Call the “GetListOfOrdersInRange” to display the data of orders that cost between $150 and $600. 

![10b](https://user-images.githubusercontent.com/106580846/222167907-7ff04966-7756-4187-bd06-bce51b32d4f8.png)


# MySQL Database Structures & Management Project
Based in Chicago, Illinois, Little Lemon is a family-owned Mediterranean restaurant, focused on traditional recipes served with a modern twist. The chefs draw inspiration from Italian, Greek, and Turkish culture and have a menu of 12–15 items that they rotate seasonally. The restaurant has a rustic and relaxed atmosphere with moderate prices, making it a popular place for a meal any time of the day.

The objective of these tasks is:
*	Provide a recap of all topics introduced in this course.
*	Provide experience with developing core database queries.

#### Task 1: Filter data using the WHERE clause and logical operators.
Create SQL statement to print all records from Bookings table for the following bookings dates using the BETWEEN operator: 2021-11-11, 2021-11-12 and 2021-11-13. 

![f1](https://user-images.githubusercontent.com/106580846/222169331-42cb7cc5-d3a2-43ea-ab14-77838aa25fde.png)

#### Task 2: Create a JOIN query.
Create a JOIN SQL statement on the Customers and Bookings tables that prints the customers full names and related bookings IDs from the date 2021-11-11.

![f2](https://user-images.githubusercontent.com/106580846/222169449-c5dcd498-c274-47af-9a68-de57dedfa9b0.png)

#### Task 3: Create a GROUP BY query.
Create a SQL statement to print the bookings dates from Bookings table to  show the total number of bookings placed on each of the printed dates using the GROUP BY BookingDate. 
![f3](https://user-images.githubusercontent.com/106580846/222169508-c486e2ba-ae7c-4f02-b56a-2f220970520c.png)


#### Task 4: Create a REPLACE statement.
Create a SQL REPLACE statement that updates the cost of the Kabsa course from $17.00 to $20.00. 

![f4i](https://user-images.githubusercontent.com/106580846/222169571-7de904ba-5dc8-4b20-b05d-b098b316c4ea.png)

To see the new column added

![f4ii](https://user-images.githubusercontent.com/106580846/222169602-2f11933e-fc26-46db-baf5-efe681df8809.png)

#### Task 5: Create constraints
Create a new table called "DeliveryAddress" in the Little Lemon database with the following columns and constraints:
*	ID: INT PRIMARY KEY
*	Address: VARCHAR(255) NOT NULL
*	Type: NOT NULL DEFAULT "Private"
*	CustomerID: INT NOT NULL FOREIGN KEY referencing CustomerID in the Customers table

![f5](https://user-images.githubusercontent.com/106580846/222169868-00eff678-f3bb-46d8-a198-31595c699762.png)

#### Task 6: Alter table structure
Create a SQL statement that adds a new column called 'Ingredients' to the Courses table.
*	Ingredients: VARCHAR(255)

![f6i](https://user-images.githubusercontent.com/106580846/222169939-24311527-e3a6-45f2-8695-ead19ea7da57.png)

![f6ii](https://user-images.githubusercontent.com/106580846/222169981-231cf999-148d-4f3e-be69-a19820461192.png)

![f6iii](https://user-images.githubusercontent.com/106580846/222170021-66754ea5-d4f8-40a5-84ef-c03adbd68a64.png)

#### Task 7: Create a subquery

Create a SQL statement with a subquery that prints the full names of all customers who made bookings in the restaurant on the following date:2021-11-11.
 
![f7](https://user-images.githubusercontent.com/106580846/222170577-100b6009-2b70-491f-ab11-4da608c558a7.png)

#### Task 8: Create a virtual table

Create the "BookingsView" virtual table to print all bookings IDs, bookings dates and the number of guests for bookings made in the restaurant before 2021-11-13 and where number of guests is larger than 3.

![f8](https://user-images.githubusercontent.com/106580846/222170622-4ab3b951-610a-4834-bd17-e7eae9df125b.png)

#### Task 9: Create a stored procedure

Create a stored procedure called 'GetBookingsData'. The procedure must contain one date parameter called "InputDate". 

Call the "GetBookingsData" with '2021-11-13' as the input date 

![f9](https://user-images.githubusercontent.com/106580846/222170821-1109d43c-24d5-4898-84b8-3ae060fab477.png)


#### Task 10: Use the String function

Create a SQL SELECT query using appropriate MySQL string function to list "Booking Details" including booking ID, booking date and number of guests. The data must be listed in the same format as the following example:

ID: 10, Date: 2021-11-10, Number of guests: 5

![f10](https://user-images.githubusercontent.com/106580846/222170866-06bc6ee0-8514-43e8-bef3-fd9094c1f48f.png)



