create database jewelrystore_db;
use jewelrystore_db;

create table item(ItemID int, Name varchar(150), Cost int, primary key(ItemID));
create table mg_orders(OrderID int, ItemID int, Quantity int, Cost int, OrderDate date, DeliveryDate date, 
OrderStatus varchar(50), primary key(OrderID));

insert into item values(1,'Engagement ring',2500),(2,'Silver brooch',400),(3,'Earrings',350),(4,'Luxury watch',1250),
(5,'Golden bracelet',800), (6,'Gemstone',1500);
insert into mg_orders values (1,1,50,122000,'2022-04-05','2022-05-25', 'Delivered'),(2,2,75,28000,'2022-03-08',null, 
'In progress'), (3,3,80,25000,'2022-05-19','2022-06-08', 'Delivered'), (4,4,45,100000,'2022-01-10',null, 'In progress'),
(5,5,70,56000,'2022-05-19',null, 'In progress'),(6,6,60,90000,'2022-06-10','2022-06-18', 'Delivered');

-- Task 1: usestring functions to list items, quantities and order status in the following format,
-- Item name–quantity–order status
-- Item name should be in lower case. Order status should be in upper case.
select concat(lcase(Name),'-',Quantity,'-', ucase(OrderStatus)) from item,mg_orders 
where item.ItemID = mg_orders.ItemID;

-- Task 2: use date function and a format string to find the name of the weekday on which M&G’s orders are to be delivered
select date_format(DeliveryDate,'%W') from mg_orders;

-- Task 3: calculates the cost of handling each order which should be 5% of the total order cost. 
-- round that value to 2 decimal places
select OrderID, round((Cost * 5 / 100),2) as HandlingCost from mg_orders;

-- Task 4: use wrote in the second tasquery in task 2 and filter out the records that 
-- do not have a NULL value in the delivery date column.
select date_format(DeliveryDate,'%W') from mg_orders where !ISNULL(DeliveryDate)
