# 📦 Store Database Project  

## 🚀 Technologies Used  
- **XAMPP** (with Apache and MySQL)  
- **MySQL** as the Database Management System 

This project consists of a small database for a store, including tables for customers, products, and orders. The database has been designed and populated to demonstrate common SQL operations such as selection, filtering, aggregation, and joins (DQL).

Table Structure

1. Customer Table

customer_id (Primary Key) – unique identifier for each customer

customer_name – name of the customer

customer_tel – telephone number

The customer table contains 52 entries, representing the store's customers.

2. Product Table

product_id (Primary Key) – unique identifier for each product

product_name – name of the product

category – product category (e.g., Smartphone, PC, Monitor)

price – product price (integer, non-negative)

The table contains 52 products covering various categories and price ranges.

3. Orders Table

id (Primary Key, AUTO_INCREMENT) – unique identifier for each order

customer_id – references the customer who made the order

product_id – references the product ordered

order_date – date of the order

quantity – number of units ordered

total_amount – total amount of the order

💡 Important note: Initially, the orders table did not have a primary key. To make it easier to modify individual rows and ensure uniqueness, I added an id column as the primary key with AUTO_INCREMENT.
I considered using a composite key (customer_id + product_id + order_date), but using a single id simplifies operations such as updating or deleting specific orders.

The table has been populated with example orders, including historical dates for testing queries that filter by year or month.

SQL Queries and Explanations

Below are the main queries written for this project, along with explanations for why and how each was designed.

1. Display all customer data

   SELECT * FROM customer;

Explanation: This query retrieves all information about customers. It is simple and useful for verifying that the table was correctly populated.

2.  Display product_name and category for products with price between 5000 and 10000

   SELECT product_name, category FROM product WHERE price BETWEEN 5000 AND 10000;

        OR

   SELECT product_name, category FROM product WHERE price >= 5000 AND price <= 10000;

Explanation: Filters products within a specific price range. Using BETWEEN or >= AND <= achieves the same result. This query helps identify mid-priced products.

3. Display all product data sorted by descending price
   
   SELECT * FROM product ORDER BY price DESC;

Explanation: Orders the products from most expensive to least expensive. Useful for ranking products by value.

4a. Display total number of orders, average, maximum, and minimum order amounts

   SELECT COUNT(id) AS TOTAL_ORDERS,
   AVG(total_amount) AS AVG_AMOUNT,
   MAX(total_amount) AS MAX_AMOUNT,
   MIN(total_amount) AS MIN_AMOUNT
   FROM orders;

Explanation: Provides aggregate statistics about all orders. I used COUNT(id) instead of COUNT(customer_id) to ensure all orders are counted correctly, even if customer_id were NULL. 

4b. For each product_id, display the number of orders

   SELECT product_id, COUNT(id) AS TOTAL_ORDER
   FROM orders
   GROUP BY product_id
   ORDER BY product_id;

Explanation: Counts how many times each product was ordered. This is useful for analyzing product popularity. When we want to group by the result we do that on the element without a group function. In this case we group by th product_id.

5. Display customer_id with more than 2 orders
  
   SELECT customer_id 
   FROM orders
   GROUP BY customer_id
   HAVING COUNT(id) > 2;

Explanation: Uses GROUP BY and HAVING to filter customers with multiple orders. This identifies repeat buyers. HAVING replaces the WHERE when the element targeted is the result of a group function.

6. For each month of 2020, display number of orders
   
   SELECT EXTRACT(MONTH FROM order_date) AS month, COUNT(id) AS total_orders
   FROM orders
   WHERE EXTRACT(YEAR FROM order_date) = 2020
   GROUP BY month
   ORDER BY month;

Explanation: Aggregates orders by month for 2020, helping analyze sales trends throughout the year.

7. For each order, display product_name, customer_name, and order_date
  
   SELECT p.product_name, c.customer_name, o.order_date
   FROM orders o
   INNER JOIN customer c ON c.customer_id = o.customer_id
   INNER JOIN product p ON p.product_id = o.product_id;

Explanation: Joins three tables to display meaningful information for each order. This shows which customer bought which product and when.

8. Display all orders made three months ago

   SELECT *
   FROM orders
   WHERE order_date >= DATE_SUB(CURRENT_DATE, INTERVAL 3 MONTH)
   AND order_date < DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH);

Explanation: Retrieves orders from exactly three months prior to the current date. This query uses DATE_SUB to handle year transitions reliably.

9. Display customers who have never ordered a product

Option 1: NOT IN

   SELECT customer_id
   FROM customer
   WHERE customer_id NOT IN (
   SELECT customer_id
   FROM orders
   WHERE customer_id IS NOT NULL
   );

Option 2: LEFT JOIN

   SELECT c.customer_id
   FROM customer c
   LEFT JOIN orders o ON c.customer_id = o.customer_id
   WHERE o.customer_id IS NULL;

Explanation: Both approaches return customers without orders.

The LEFT JOIN method is generally safer and faster for large tables, as it handles NULL values and performs better with indexes.

The NOT IN method requires filtering out NULL in the subquery to avoid errors.
