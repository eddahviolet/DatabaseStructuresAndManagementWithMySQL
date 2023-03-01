use Lucky_Shruby;

-- Task 1:create the OrdersView Virtual table based on the Orders table, to include the columns Order ID, Quantity and Cost.
create view OrdersView as select OrderID, Quantity, Cost from Orders;
select * from Ordersview;

-- Task 2: use the ‘OrdersView’ virtual table to Update the base table 'Orders' 
update OrdersView set Cost = 200 where OrderID = 2;
select * from Ordersview;

-- Task 3: change the name of the ‘OrdersView’ virtual table to ClientsOrdersView.
rename table OrdersView to ClientsOrdersView;
select * from ClientsOrdersView;

-- Task 4: delete the 'ClientOrdersView' virtual table.
drop view ClientsOrdersView;
