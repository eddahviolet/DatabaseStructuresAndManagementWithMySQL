create database Mangata_Gallo;
use Mangata_Gallo; 

-- Task 1: Create the Clients table with the required constraints
create table Clients (ClientID int primary key, FullName varchar(100) not null, PhoneNumber int not null unique);
show columns from Clients;

-- Task 2: Create the Items table with the required constraints:
create table Items (ItemID int primary key, ItemName varchar(100) not null, Price decimal(5,2) not null);
show columns from Items;

-- Task 3: Create the Orders table with the required constraints
create table Orders ( OrderID int primary key,  ItemID int not null,ClientID int not null, 
Quantity int not null check (Quantity < 4),Cost decimal(6,2) not null, foreign key (ClientID) references Clients (ClientID), 
foreign key (ItemID) references Items (ItemID));
show columns from Orders;