create database ecomerce;
use ecomerce;
select database();
show tables;
select * from ss;
# Data Cleaning 
select order_id,count(*) from ss group by order_id having count(*)>1; # duplicate(NOTE: here the data is fact table thus used to track multiple order by single id)
select customer_name from ss where ship_mode is null; #missing data
select * from ss where order_id is null; # incorrect data
# higher sales & profits
select Region,sum(sales) as 'TOT SALES' from ss group by region order by sum(sales) desc; # top selling region by sales 
select Category, sum(sales) as Sales from ss group by Category order by sum(sales) desc; # high selling category by sales
select product_name,sum(sales) from ss group by product_name order by sum(sales) desc; # high selling product
select month(order_date), sum(sales) from ss group by month(order_date) order by sum(sales) desc; # high selling month
select product_name,sum(profit) from ss group by product_name order by sum(profit) desc limit 10; # top 10 profitable product
 

