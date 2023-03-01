use Lucky_Shruby;
-- Task 1: create a stored procedure called 'GetOrdersData' which retrieves all data from the Orders table.
create procedure GetOrdersData ()  select * from Orders;

call GetOrdersData();

-- Task 2: create a stored procedure called “GetListOfOrdersInRange” that has two parameters which determine the 
-- range of retrieved data based on the user input of two cost values “MinimumValue” and “MaximumValue”.

create procedure GetListOfOrdersInRange (MinimumValue decimal, MaximumValue decimal) 
select * from Orders where Cost >= MinimumValue and Cost <= MaximumValue;
call GetListOfOrdersInRange (150, 600);
