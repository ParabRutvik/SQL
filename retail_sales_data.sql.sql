# create the database 
create database Sales;# create the database 
# use the databse
Use Sales;                             
# Dislpay the table
select * from retail_sales_dataset;

#1 show the how many customer in this tabel 
select count(*)Customer_ID from retail_sales_dataset;

#2 show the unique value in in the product category column
select distinct (Product_Category) from retail_sales_dataset;

#3 show the electronic product categoy sold less than 3 quantity to male
select  * from retail_sales_dataset where Product_Category ="Electronics" and Quantity <=3 and Gender !="Female";

#4 show the avg quantity of Electronic product sold
select avg(Quantity ) as AVG_Quantity from retail_sales_dataset Where Product_Category = "Electronics";


#5 show the all customer In their id "St0" to purchase electronics product ;
select  Customer_ID,Product_Category From retail_sales_dataset 
where Customer_ID like "%ST0%" 
And Product_Category = "Clothing";

#6 show the all sales date between '2023-01-01 to 2023-03-31' 
select * from retail_sales_dataset where Date between '2023-01-01' and '2023-03-31';

#7 show the all total_Amount not between in 25 to 500
select * from retail_sales_dataset where Total_Amount not between 25 and 500;

#8 show the   product category clothing or beauty quantity is less than 3
select * from retail_sales_dataset where Product_Category =  " Clothing" or Product_Category ="Beauty" and Quantity <=3;

#9 show the all female customer in their id "ST5" And their product is beauty also age less than29 
select * from retail_sales_dataset
where Customer_Id like "%ST5%" AND
Product_Category ="Beauty" and Age <=29;

#10 show all the male customer total amount between 1000 to 1500 and their customer id end with 5 in descending order

select * from retail_sales_dataset
where Total_Amount between 1000 and 1500 and 
Customer_Id regexp "5$"
order by Customer_Id asc;

# 11 show all product_Category with an average quantity and order by the average quantity 
select Product_category,avg(Quantity)as avg_quantity from retail_sales_dataset
group by Product_Category
order by avg_quantity desc;

# 12 show which product have sold more than 500 units in total 
select product_category,sum(Quantity)as sum_quantity
from retail_sales_dataset
group by Product_Category 
having sum(Quantity) >500
;

# 13 find most purchased product category
select Product_Category,Count(*)as total_purchase
from retail_sales_dataset
group by Product_Category 
order by total_Purchase desc
limit 1 ; 

# 14 calculate the total amount spent by female customer
select sum(Total_Amount) as Total_spent_byfemales
from retail_sales_dataset 
where Customer_ID IN ( select Customer_ID from retail_sales_dataset where Gender!="Male");


















