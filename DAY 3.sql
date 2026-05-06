SELECT * 
FROM production.products
where list_price = 2999.9 OR
list_price= 2599.99 OR 
list_price= 1199.99;

--IN
SELECT * 
FROM production.products
where list_price IN (1199.9, 2799.90, 1199.99, 2999.99)

--NOT IN
SELECT * 
FROM production.products
where list_price NOT IN (1199.9, 2799.90, 1199.99, 2999.99)

--Between
SELECT * 
FROM production.products
where list_price BETWEEN 1199.9 AND 2999.99

--Alias
--column & tables

SELECT product_name as prd_name
FROM production.products;

--Customer Full Name
SELECT first_name + ' ' + last_name as full_name
from sales.customers

--like 
--logical operator that check or matches with specified string/text
--used with wild cards % _ ^ []

SELECT customer_id, first_name, last_name 
FROM sales.customers
where first_name like 'A%'
order by first_name;
--If we want A on last

SELECT customer_id, first_name, last_name 
FROM sales.customers
where first_name like '%A'
order by first_name;

SELECT customer_id, first_name, last_name 
FROM sales.customers
where last_name like 't%s'
order by first_name;

SELECT customer_id, first_name, last_name 
FROM sales.customers
where last_name like '%g%'
order by first_name;

-- _single character
-- 2nd letter a

SELECT first_name, last_name
FROM sales.customers
where first_name LIKE '_a%'

--First letter must not be 'a'

SELECT customer_id, first_name, last_name
FROM sales.customers
where first_name NOT LIKE 'a%'
order by first_name;

---------------------------------JOINS-------------------------------------------

SELECT T1.list_price, T1.category_id,T2.category_id, T1.product_name, T2.category_name
FROM production.products as T1
INNER JOIN production.categories as T2
ON T1.category_id = T2.category_id
order by product_name desc

SELECT * 
FROM production.categories


SELECT 
	product_name, 
	list_price, 
	products.category_id,
	category_name
FROM
	production.products
INNER JOIN production.categories
	ON products.category_id = categories.category_id
order by 
	product_name desc;


---CUSTOMER FULL NSME, ORDER STATUS, ORDER DATE 
SELECT first_name + ' ' +  last_name as full_name, order_status, order_date
FROM sales.customers
INNER JOIN sales.orders 
  ON customers.customer_id = orders.customer_id


SELECT product_name, brand_id , quantity
FROM production.products
INNER JOIN production.stocks
  ON products.product_id=stocks.product_id


  -----JOINS-------- 

create schema hr;
go

create table hr.candidates(
	id int primary key identity,
	fullname varchar(100) not null);

create table hr.employees(
	id int primary key identity,
	fullname varchar(100) not null);


insert into 
	hr.candidates(fullname)
values
	('Saad'),
	('Mohsin'),
	('Owais'),
	('Haseeb')

insert into 
	hr.employees(fullname)
values
	('Haseeb'),
	('Saad'),
	('Bilal'),
	('Adnan')

	
SELECT T1.list_price, T1.category_id,T2.category_id, T1.product_name, T2.category_name
FROM production.products as T1
INNER JOIN production.categories as T2
ON T1.category_id = T2.category_id
order by product_name desc

SELECT * 
FROM production.categories


SELECT 
	product_name, 
	list_price, 
	products.category_id,
	category_name
FROM
	production.products
INNER JOIN production.categories
	ON products.category_id = categories.category_id
order by 
	product_name desc;


---CUSTOMER FULL NSME, ORDER STATUS, ORDER DATE 
SELECT first_name + ' ' +  last_name as full_name, order_status, order_date
FROM sales.customers
INNER JOIN sales.orders 
  ON customers.customer_id = orders.customer_id


SELECT product_name, brand_id , quantity
FROM production.products
INNER JOIN production.stocks
  ON products.product_id=stocks.product_id