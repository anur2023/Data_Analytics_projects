SELECT * FROM retail_sales
limit 10;
SELECT * FROM retail_sales
where transactions_id is null
or 
sale_date is null
or
sale_time is null
or 
customer_id is null
or
gender is null
or
age is null
or
category is null
or
quantiy is null
or
price_per_unit is null
or
cogs is null
or
total_sale is null;


select count(*)
from retail_sales;

delete from retail_sales
where transactions_id is null
or 
sale_date is null
or
sale_time is null
or 
customer_id is null
or
gender is null
or
age is null
or
category is null
or
quantiy is null
or
price_per_unit is null
or
cogs is null
or
total_sale is null;



-- Data Exploration
--- (a) How many sales we have
select count(*) as sales_count from retail_sales;
--- (b) How many unique customers we have
select count(distinct customer_id) as customer_count from retail_sales;
--- (c) Find the unique category
select distinct category from retail_sales;


--- Data Analysis and business key problem
--- Q(1). Write a sql query to retrive all column for sales made on '2022-11-05'?
select * 
from retail_sales
where sale_date = '2022-11-05';

--- Q(2). Write a sql query to retrive all the transactions where the category is 'clothing' and quantiy is sold more than 10 in the month of november 2022?
select * 
from retail_sales
where (category = 'Clothing' and quantiy>=4 and (sale_date>='2022-11-01' and sale_date<='2022-11-30'));

--- Q(3). Write a sql query to calculate the total sales for each category?
select 
category,
sum(total_sale) as net_sale,
count (*) as total_order
from retail_sales
GROUP BY 1;


--- Q(4). Write a sql query to find average age of customer's who purchased the items for 'beauty' category?
select CAST(AVG(age) AS INT) as Average_age
from retail_sales
where category = 'Beauty';

--- Q(5). Write a sql query to find all the transaction where the total sales is greater than 1000?
select * 
from retail_sales
where total_sale>1000;

--- Q(6). Write a sql query to find the total number of transaction(transaction_id) made by each gender in each category?
select 
category,
gender,
count(*) as total_transaction
from retail_sales
group by 
category,
gender;
--- Q(7). Wrirte a sql query to calculate the sales for each month. Find out the best selling month in each year?
select 
year,
month,
avg_sale
from
(select 
extract(year from sale_date) as year,
extract (month from sale_date) as month,
cast (avg(total_sale)as int) as avg_sale,
rank() over(partition by extract (year from sale_date)order by avg(total_sale)desc)as rank
from retail_sales
group by 1,2)
where rank=1;
--- Q(8). Write a sql query to find the top 5 customers based on the heightest total sales?
select * from retail_sales;
select transactions_id,
sum(total_sale)
from retail_sales
group by 1
order by 2 desc
limit 5;
--- Q(9). Wrtie a sql query to find the number of unique customers who purchased item for each category.
SELECT 
    category,
    COUNT(DISTINCT transactions_id) AS unique_customers
FROM 
    retail_sales
GROUP BY 
    category;

