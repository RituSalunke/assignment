use ass1;
#use a1;

/*drop table if exists orders;
drop table if exists customer;
drop table if exists salesman;
drop table if exists emp_details;
drop table if exists item_mast;

create table salesman(
salesman_id int primary key,
name varchar(50),
city varchar(50),
commission int
);

create table customer(
customer_id int primary key,
cust_name varchar(50),
city varchar(50),
grade varchar(50),
salesman_id int,
foreign key (salesman_id) references salesman(salesman_id)
);

create table orders(
ord_no int primary key,
purch_amt int,
ord_date date,
customer_id int,
salesman_id int,
foreign key (customer_id) references customer(customer_id),
foreign key (salesman_id) references salesman (salesman_id)
);

create table emp_details(
EMP_IDNO int primary key,
EMP_FNAME varchar(50),
EMP_LNAME varchar(50),
EMP_DEPT varchar(50)
);

create table item_mast(
PRO_ID int primary key,
PRO_NAME varchar(50),
PRO_PRICE int,
PRO_COM int
);

insert into salesman
values(5001,'James Hoog','New York',0.15),
	(5002,'Nail Knite','Paris',0.13),
	(5005,'Pit Alex','London',0.11),
	(5006,'Mc Lyon','Paris',0.14),
	(5007,'Paul Adam','Rome',0.13),
	(5003,'Lauson Hen','San Jose',0.12);
    
insert into customer
values(3002,'Nick Rimando','New York',100,5001),
	(3007,'Brad Davis','New York',200,5001),
    (3005,'Graham Zusi','California',200,5002),
    (3008,'Julian Green','London',300,5002),
    (3004,'Fabian Johnson','Paris',300,5006),
    (3009,'Geoff Cameron','Berlin',100,5003),
    (3003,'Jozy Altidor','Moscow',200,5007);
    
insert into customer (customer_id,cust_name,city,salesman_id) values (3001,'Brad Guzan','London',5005);

insert into orders
values (70001,150.5,'2012-10-05',3005,5002),
	(70009,270.65,'2012-09-10',3001,5005),
    (70002,65.26,'2012-10-05',3002,5001),
    (70004,110.5,'2012-08-17',3009,5003),
    (70007,948.5,'2012-09-10',3005,5002),
    (70005,2400.6,'2012-07-27',3007,5001),
    (70008,5760,'2012-09-10',3002,5001),
    (70010,1983.43,'2012-10-10',3004,5006),
    (70003,2480.4,'2012-10-10',3009,5003),
    (70012,250.45,'2012-06-27',3008,5002),
    (70011,75.29,'2012-08-17',3003,5007),
    (70013,3045.6,'2012-04-25',3002,5001);

insert into emp_details
values (127323,'Michale','Robbin',57),
(526689,'Carlos','Snares',63),
( 843795,'Enric','Dosio',57),
(328717,'Jhon','Snares',63),
(444527,'Joseph','Dosni',47),
(659831,'Zanifer','Emily',47),
(847674,'Kuleswar','Sitaraman',57),
(748681,'Henrey','Gabriel',47),
(555935,'Alex','Manuel',57),
(539569,'George','Mardy',27),
(733843,'Mario','Saule',63),
(631548,'Alan','Snappy',27),
(839139,'Maria','Foster',57);

insert into item_mast
values (101,'Motherboard',3200.00,15),
(102,'Keyboard',450.00,16),
(103,'ZIP drive',250.00,14),
(104,'Speaker',550.00,16),
(105,'Monitor',5000.00,11),
(106,'DVD drive',900.00,12),
(107,'CD drive',800.00,12),
(108,'Printer',2600.00,13),
(109,'Refill cartridge',350.00,13),
(110,'Mouse',250.00,12);
*/

/*select * from salesman;
select * from customer;
select * from orders;
select * from emp_details;
select * from item_mast;*/

select * from regions;
select * from countries;
select * from locations;
select * from departments;
select * from jobs;
select * from employees;
select * from job_history;

/*1.write a SQL query to find customers who are either from the city 'NewYork' or
who do not have a grade greater than 100. Return customer_id, cust_name, city, grade, and salesman_id.*/

/*select * from customer where city = 'New York' or not grade > 100;*/

/*2.write a SQL query to find all the customers in ‘New York’ city who have a gradevalue above 100. Return customer_id, cust_name, city, grade, and salesman_id.*/
/*select * from customer where city = 'New York' and grade > 100;*/

/*3.Write a SQL query that displays order number, purchase amount, and the
achieved and unachieved percentage (%) for those orders that exceed 50%of the target value of 6000.*/

/*4. write a SQL query to calculate the total purchase amount of all orders. Return total purchase amount.   */
#select sum(purch_amt) from orders as total;

/*  5.write a SQL query to find the highest purchase amount ordered by each customer. Return customer ID, maximum purchase amount. */


/*  6.write a SQL query to calculate the average product price. Return average product price. */
#select avg(pro_price) from item_mast;

/* 7.write a SQL query to find those employees whose department is located at ‘Toronto’. Return first name, last name, employee ID, job ID.  */
/*select
emp.first_name,
emp.last_name 
from employees as emp
LEFT JOIN departments as dp ON dp.department_id = emp.department_id
LEFT JOIN locations as lc ON lc.location_id = dp.location_id
where lc.city = 'Toronto';*/

/*  8.write a SQL query to find those employees whose salary is lower than that of employees whose job title is "MK_MAN". Exclude employees of the Jobtitle‘MK_MAN’. 
Return employee ID, first name, last name, job ID. */
/*select 
employee_id,
first_name,
last_name,
job_id 
from employees
where salary < (select  min(salary) from employees where job_id = 'MK_MAN' ); */

/* 9.write a SQL query to find all those employees who work in department ID 80 or 40. Return first name, last name, department number and department name.  */
/*select 
employees.first_name,
employees.last_name,
departments.department_id,
departments.department_name
from employees
left join departments
on employees.department_id = departments.department_id
where employees.department_id = 80 or 40 ;*/

/* 10.write a SQL query to calculate the average salary, the number of employees receiving commissions in that department. Return department name, average salary and
 number of employees.  */
/*select
departments.department_name,
avg(employees.salary) as avg,
count(employees.commission_pct)
from employees
left join departments
on employees.department_id = departments.department_id 
group by departments.department_name;*/
 
/*  11.write a SQL query to find out which employees have the same designationas the employee whose ID is 169. 
#Return first name, last name, department IDandjobID. */
/*SELECT 
first_name, 
last_name, 
department_id,
 job_id
FROM employees
WHERE job_id = (SELECT job_id FROM employees WHERE employee_id = 169);*/

/* 12.write a SQL query to find those employees who earn more than the averagesalary. Return employee ID, first name, last name.  */
/*SELECT 
employee_id, 
first_name, 
last_name
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);*/

/*  13.write a SQL query to find all those employees who work in the Finance department. Return department ID, name (first), job ID and department name. */
/*SELECT 
    employees.department_id,
    employees.first_name,
    employees.job_id,
    departments.department_name
FROM employees 
JOIN departments 
    ON employees.department_id = departments.department_id
WHERE departments.department_name = 'Finance';*/

/*  14. From the following table, write a SQL query to find the employees who earn less than the employee of ID 182. Return first name, last name and salary. */
/*SELECT 
first_name, 
last_name, 
salary
FROM employees
WHERE salary < (SELECT salary FROM employees WHERE employee_id = 182);*/

/*  15.Create a stored procedure CountEmployeesByDept that returns the number of employees in each department */
/*delimiter $$
create procedure CountEmployeesByDept()
begin 
	SELECT 
        departments.department_id,
        departments.department_name,
        COUNT(employees.employee_id) AS count
    FROM departments 
    LEFT JOIN employees 
    ON departments.department_id = employees.department_id
    GROUP BY departments.department_id, departments.department_name;
end $$
delimiter ;*/

#call CountEmployeesByDept();

/*  16.Create a stored procedure AddNewEmployee that adds a new employee tothedatabase. */
/*delimiter $$
create procedure e1_ins(in a int,in b varchar(50),in c varchar(50),in d varchar(50),in e float,in f date,in g varchar(50),in h int,in i int,in j int,in k int)
begin 
insert into employees 
	(employee_id,
	first_name,
	last_name,
	email ,
	phone_number ,
	hire_date ,
	job_id ,
	salary,
	commission_pct ,
	manager_id ,
	department_id)
    values(a,b,c,d,e,f,g,h,i,j,k);
end $$
delimiter ;*/

#call e_ins(207,'ritu','salunke','RITUS','1443267643','2021-08-02','AC_MGR',12000,0,100,110);

/* 17.Create a stored procedure DeleteEmployeesByDept that removes all employeesfrom a specific department  */
/*delimiter $$
create procedure DeleteEmployeesByDept1(in x int)
begin 
delete from employees where department_id = x;
end $$
delimiter ;

call DeleteEmployeesByDept1(20);*/

/*  18.Create a stored procedure GetTopPaidEmployees that retrieves the highest-paid employee in each department. */
/*delimiter $$
create procedure GetTopPaidEmployees()
begin 
	SELECT 
        employees.employee_id,
        employees.salary,
        employees.department_id,
        departments.department_name
    FROM employees 
    JOIN departments 
    ON employees.department_id = departments.department_id
    WHERE (employees.department_id, employees.salary) IN (SELECT department_id, MAX(salary) FROM employees GROUP BY department_id);
end $$
delimiter ;*/

#call GetTopPaidEmployees();

/*  19.Create a stored procedure PromoteEmployee that increases an employee’s salaryand changes their job role. */


/* 20.Create a stored procedure AssignManagerToDepartment that assigns a newmanager to all employees in a specific department  */
