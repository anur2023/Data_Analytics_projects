**Retail Sales Analysis**  

**1. Data Cleaning**  
- Removed rows with `NULL` values in critical columns such as `transactions_id`, `sale_date`, `customer_id`, `gender`, `age`, `category`, `quantity`, `price_per_unit`, `cogs`, and `total_sale`.  
- Verified data consistency after cleaning.  

**2. Data Exploration**  
- Total number of sales was calculated.  
- Counted the number of unique customers.  
- Retrieved a list of unique product categories.  

**3. Business Questions**  

**(a) Sales on a specific date:**  
- Retrieved all sales made on `2022-11-05`.  

**(b) Transactions for "Clothing" with quantity > 10 in November 2022:**  
- Extracted transactions where the category was "Clothing" and quantities sold were greater than 10 within November 2022.  

**(c) Total sales by category:**  
- Calculated the total sales and total number of orders for each category.  

**(d) Average age of customers for "Beauty" products:**  
- Found the average age of customers who purchased items in the "Beauty" category.  

**(e) Transactions where total sales > 1000:**  
- Retrieved all transactions where the total sale value was greater than 1000.  

**(f) Total transactions by gender in each category:**  
- Counted the total number of transactions for each gender across all categories.  

**(g) Best-selling month in each year:**  
- Determined the best-selling month in each year by calculating the highest average monthly sales.  

**(h) Top 5 customers by total sales:**  
- Identified the top 5 customers with the highest total sales.  

**(i) Unique customers by category:**  
- Found the number of unique customers for each category based on distinct transactions.  

**4. Key Insights**  
- Identified the best-selling month for each year.  
- Analyzed customer demographics, such as average age for specific categories like "Beauty."  
- Found top-performing customers by total sales and provided a breakdown of sales by category, gender, and transactions.  
