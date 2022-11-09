create database lag_lead;

use lag_lead;

create table emp_sales(
emp_id int,
dept int,
product_id int,
quantity int,
sales int,
sales_year int
);

insert into emp_sales values(100,1,1,21,200,2000),
(101,1,1,21,150,2001),
(102,2,2,45,211,2002),
(103,3,2,21,2345,2003),
(100,1,3,45,322,2004),
(104,3,2,45,4000,2005),
(105,1,3,56,322,2006),
(106,2,2,32,322,2007),
(101,2,3,22,322,2008),
(103,3,3,44,3211,2009),
(104,3,2,66,4000,2010);

select * from emp_sales;

select emp_id, sales_year, sales,
lag(sales) over(order by sales_year) as 'Previous Year'
from emp_sales;


select emp_id, sales_year, sales,
lag(sales) over(order by sales_year) as 'Previous Year',
lead(sales) over(order by sales_year) as 'Next Year'
from emp_sales;