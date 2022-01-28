--#UC1
create database AddressBook_service

--#UC2
create table AddressBook
(
	firstName varchar(Max),
	lastName varchar(Max),
	Address varchar(Max),
	city varchar(Max),
	state varchar(Max),
	zipCode int,
	phoneNumber varchar(Max),
	email varchar(Max)
)

--#UC3
insert into AddressBook(FirstName,lastName,Address,City,State,ZipCode,PhoneNumber,Email)
values('naveen','reddy','udayagiri','nellore','andhrapradesh',524226,'7702053175','naveenreddy.k07@gmail.com')

insert into AddressBook(FirstName,lastName,Address,City,State,ZipCode,PhoneNumber,Email)
values('narasimha','reddy','badvel','kadapa','andhrapradesh',524106,'8309294800','narasimha422@gmail.com')

select * from AddressBook

--#UC4 ContactPerson
create table ContactPerson
(
	firstName varchar(Max),
	lastName varchar(Max),
	Address varchar(Max),
	city varchar(Max),
	state varchar(Max),
	zipCode int,
	phoneNumber varchar(Max),
	email varchar(Max)
)
insert into ContactPerson(FirstName,lastName,Address,City,State,ZipCode,PhoneNumber,Email)
values('dinesh','reddy','seetharamapuram','nellore','andhrapradesh',524228,'7382421108','dineshreddy678@gmail.com')

insert into ContactPerson(FirstName,lastName,Address,City,State,ZipCode,PhoneNumber,Email)
values('alekhya','reddy','electronic city','banglore','karnataka',506100,'7259995766','alekhyakanaparthi566@gmail.com')

select * from ContactPerson
select * from AddressBook

--#UC4 Edit Existing ContactPerson by using Name
insert into ContactPerson(FirstName,lastName,Address,City,State,ZipCode,PhoneNumber,Email)
values('ravindra','reddy','electronic city','banglore','karnataka',506100,'7259995766','alekhyakanaparthi566@gmail.com')

--#UC5 Delete person
delete ContactPerson
where firstName='alekhya'

--#UC6 
select city,state from AddressBook

select city,state from ContactPerson
 
--#UC7 size of Addressbook
 select count(city) from AddressBook
 select count(state) from AddressBook

 --#UC8
SELECT city from AddressBook
ORDER BY city ASC;

SELECT city from AddressBook
ORDER BY city DESC;

--#UC10 count number of contact persons in tables
select count(firstName) from AddressBook 
select count(firstName) from ContactPerson

--#UC11
Alter table AddressBook
Add Relation varchar(Max)

Alter table ContactPerson
Add Relation varchar(Max)

update AddressBook
set Relation='family'
where firstName='dinesh'

update AddressBook
set Relation='friend'
where firstName='ravindra'

update ContactPerson
set Relation='family'
where firstName='naveen'

update ContactPerson
set Relation='friend'
where firstName='narasimha'



