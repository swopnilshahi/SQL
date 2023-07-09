use dbct
--referencial Integrity(FOREIGN KEY)
create table employees(
	id int not null primary key identity,
	fname varchar(25),
	lname varchar(25),
	gender varchar(6),
	salary decimal(9,2),
	age int,
	city varchar(25),
	cid int not null constraint company_emp_fk foreign key(cid) references company(id) ON DELETE CASCADE ON UPDATE CASCADE ,
	createdDate datetime)

INSERT INTO employees(fname,lname,gender,salary,age,city,cid,createdDate)values
('Birendra','Shah','male',9494848,40,'Jhapa',1,GETDATE())
INSERT INTO employees(fname,lname,gender,salary,age,city,cid,createdDate)values
('Rajya Laxmi','shahi','female',5349599,20,'Palapa',2,GETDATE())
INSERT INTO employees(fname,lname,gender,salary,age,city,cid,createdDate)values
('Ganendra','Bahadur','male',8848584,47,'Humla',3,GETDATE())
INSERT INTO employees(fname,lname,gender,salary,age,city,cid,createdDate)values
('Anwesha','Rana','female',4645645,26,'bardiya',22,GETDATE())
INSERT INTO employees(fname,lname,gender,salary,age,city,cid,createdDate)values
('Tapendra','Malla','male',4645645,32,'Butal',42,GETDATE())

select * from employees

--adding data to company to see CASCADE
insert into company(cname,phone,cratedDate)values
('Meta','977894567',GETDATE())

insert into company(cname,phone,cratedDate)values
('DDDD','94567',GETDATE())


select * from company 
INSERT INTO employees(fname,lname,gender,salary,age,city,cid,createdDate)values
('Ram','dev','female',4645645,26,'bardiya',5,GETDATE())
INSERT INTO employees(fname,lname,gender,l',6,GETDATE())
INSERT INTO employees(fname,lname,gender,salary,age,city,cid,createdDate)values
('Rdfd','dev','female',4645645,26,'bardisalary,age,city,cid,createdDate)values
('sdfra','Malla','male',4645645,32,'Butaya',5,GETDATE())
INSERT INTO employees(fname,lname,gender,salary,age,city,cid,createdDate)values
('aaaaa','Malla','male',4645645,32,'Butal',6,GETDATE())

select * from employees

delete from  company where id=6