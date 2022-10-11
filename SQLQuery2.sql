-----UC1 AddresssBook DataBase----
create database AddressBook

use  AddressBook

----UC2 Creating Table------
select * from  Address_Book
create table Address_Book
(
id int identity (1,1) primary key,
firstname varchar (250),
lastname varchar (250),
Address varchar (200),
city varchar (200),
state varchar (200),
zip int,
PhoneNumber bigint,
email varchar (250)
);