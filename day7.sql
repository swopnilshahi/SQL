create database dbct
use dbct
--table for com[pany
create table company(
	id int not null primary key identity,
	cname varchar(50) not null,
	phone varchar(20),
	cratedDate datetime )

insert into company(cname,phone,cratedDate)values
('Cooding Technology Pvt Ltd','989894567',GETDATE())
insert into company(cname,phone,cratedDate)values
('Google','01454567',getdate())
insert into company(cname,phone,cratedDate)values
('Microsoft','01454557',getdate())
insert into company(cname,phone,cratedDate)values
('Amazon','014557',getdate())

select * from company
drop table company

--table for employee`
create table employee(
	id int not null primary key identity,
	fname varchar(25),
	lname varchar(25),
	gender varchar(6),
	salary decimal(9,2),
	age int,
	city varchar(25),
	cid int,
	createdDate datetime)

insert into employee(fname,lname,gender,salary,age,city,cid,createdDate)values
('Rakesh','deo','Male',3242332,30,'Janakpur',1, getdate())
insert into employee(fname,lname,gender,salary,age,city,cid,createdDate)values
('Swopnil','Shahi','Male',200000,23,'Achham',2, getdate())
insert into employee(fname,lname,gender,salary,age,city,cid,createdDate)values
('Aakrista','Malla','Female',5242332,22,'Ktm',3, getdate())
insert into employee(fname,lname,gender,salary,age,city,cid,createdDate)values
('Suzu','Suzu','Female',42332,18,'Janakpur',1, getdate())
insert into employee(fname,lname,gender,salary,age,city,cid,createdDate)values
('Ram','adhakari','Male',25000,30,'Achham',2, getdate())
insert into employee(fname,lname,gender,salary,age,city,cid,createdDate)values
('Sita','shah','Female',30000,35,'Janakpur',3, getdate())
insert into employee(fname,lname,gender,salary,age,city,cid,createdDate)values
('Shiv','Parbati','Male',50000,50,'ktm',1, getdate())
insert into employee(fname,lname,gender,salary,age,city,cid,createdDate)values
('Krishna','Rai','Male',150000,18,'ktm',2, getdate())
insert into employee(fname,lname,gender,salary,age,city,cid,createdDate)values
('Radha','deo','Female',242332,26,'Achham',3, getdate())
insert into employee(fname,lname,gender,salary,age,city,cid,createdDate)values
('hari','om','Male',3242332,30,'Lumbinu',1, getdate())



select * from employee
drop table employee

--Join(RDBMS)
select c.cname,e.fname,e.salary from company c
	INNER JOIN employee e 
	ON c.id=e.cid
select c.cname,e.fname,e.salary from company c
	INNER JOIN employee e 
	ON c.id=e.cid 
	where e.cid = 1

