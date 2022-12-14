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


----UC3 Inserting new Contact------
select * from  Address_Book
insert into  Address_Book (firstname,lastname,Address,city,state,zip,PhoneNumber,email)
values('Abhi','Shinde','Hadapsar','pune','Maharashtra',411028,8458458715,'abhis@gmail.com');

insert into  Address_Book (firstname,lastname,Address,city,state,zip,PhoneNumber,email)
values('yogi','kapre','Hadapsar','mumbai','chandigarh',411029,8458458715,'yogisdd45@gmail.com');

insert into  Address_Book (firstname,lastname,Address,city,state,zip,PhoneNumber,email)
values('Abhi','Shinde','Hadapsar','pune','Goa',411028,8458458715,'abhis@gmail.com');


---UC4 Edit Contact-----

Update Address_Book
set firstname='sunny',lastname='bhandare' where id = 1;
select * from Address_Book;

-----UC5 Delete_Contact------
delete from Address_Book where firstname='Sunny';
select * from Address_Book;

----UC6 Retrive person belonging to city and state---------

select id, firstname,lastname,Address,city,state,zip,PhoneNumber,email from Address_Book where city = 'pune';

-------UC7 Understand size of Addressbook by city and state------
select COUNT(*) as statecount , state from Address_Book group by state;
select COUNT(*) as citycount , city from Address_Book group by city;

------UC8 Retrive entries sorted alphabetically by person name------
select * from Address_Book order by firstname;  

-----UC9 To Identify Address with name and type--------
Alter table Address_Book add Contacttype varchar(200)not null default  'friends';
update Address_Book set contactType = 'Family' where firstname = 'yogi'