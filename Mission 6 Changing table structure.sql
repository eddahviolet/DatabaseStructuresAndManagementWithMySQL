use Mangata_Gallo;

-- Task 1: create staff table
create table Staff (StaffID int, FullName varchar(100), PhoneNumber varchar(10));
show columns from Staff;

-- Task 2: alter staff table to apply constraints
alter table Staff modify StaffID int primary key, modify FullName varchar(100) not null, modify PhoneNumber int not null;
show columns from Staff;

-- Task 3: add a new column called 'Role' to the Staff table
alter table Staff add column Role varchar(50) not null;
show columns from Staff;

-- Task 4: drop the 'Phone Number' column from the Staff table
alter table Staff drop column PhoneNumber;
show columns from Staff;