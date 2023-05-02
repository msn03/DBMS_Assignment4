/*Find the number of orders placed by each customer.*/
SELECT (SELECT COUNT(cust_id) FROM orders WHERE customer.cust_id=orders.cust_id) AS ordercount, * FROM customer;