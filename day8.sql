use dbct

insert into employee(fname,lname,gender,salary,age,city,cid,createdDate)values
('Shree','Ram','Male',3242332,40,'Aayodhya',10, getdate())
insert into employee(fname,lname,gender,salary,age,city,cid,createdDate)values
('Sita','Janaki','female',992332,30,'Janakpur',11, getdate())
delete  from employee where id=13
select * from employee

--left outer join
select c.cname, e.fname,e.salary from company c LEFT OUTER JOIN employee e on c.id=e.cid
select c.cname, e.fname, e.salary from company c LEFT OUTER JOIN employee e on c.id=e.cid where e.cid=1

--right outer join
select c.cname,e.fname,e.salary, e.cid from company c RIGHT OUTER JOIN employee e on c.id=e.cid

select c.cname,e.fname,e.salary from company c RIGHT OUTER JOIN employee e on c.id=e.cid where e.cid=10
--
select c.cname,e.fname,e.salary from company c RIGHT OUTER JOIN employee e on c.id=e.cid where salary>100000

--full join
select c.cname,e.fname,e.salary from company c FULL JOIN employee e on c.id=e.cid

--cross join
select c.cname,e.fname,e.salary from company c CROSS JOIN employee e 

--self join
  