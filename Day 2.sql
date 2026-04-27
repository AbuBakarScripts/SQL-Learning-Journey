use bikestores;



SELECT
     *
FROM
     sales.customers;




SELECT
     *
FROM
    sales.orders
order by order_date desc;





SELECT 
  state,city,first_name,last_name
from
  sales.customers
where
  state='NY'
order by
  city 





  --limting
  --TOP N

  Select TOP 10
    * 
  FROM production.products
  Order by list_price ;


  SELECT TOP 10
      product_id,product_name,list_price
  From
      production.products
  order by 
      list_price DESC


--Total Records in products table 321
--1 % 3.21
--Round up to 4
  
Select TOP 1 Percent
  * 
from production.products
order by list_price


--OFFSET AND FETCH 
--always use with order by

--OFFSET Skip the starting rows
--Take the N NO OF Rows


Select 
*
From production.products
order by list_price DESC
OFFSET 0 rows
fetch next 10 rows only;


--Distinct
--synatx

--Select Distinct Column-name 
                             --From Table_name
select distinct product_name
from  production.products
order by product_name

Select  city,state
 from sales.customers
 order by city

Select distinct city,state
 from sales.customers
 order by city

 Select distinct phone
 from sales.customers
 order by phone


 --AND OR Logical Operator

 Select * 
 From production.products
 where (brand_id =1 or brand_id =2)
       AND list_price > 1000
       order by list_price desc,brand_id 






