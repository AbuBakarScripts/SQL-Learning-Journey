--Create  Database name
CREATE  DATABASE BikeStores;

--Selection
SELECT * FROM sales.customers;
SELECT * FROM production.products;
SELECT product_id,product_name  FROM production.products;
SELECT product_name,list_price  FROM production.products;
SELECT * FROM sales.orders;

SELECT * FROM sales.customers
where customer_id=33;