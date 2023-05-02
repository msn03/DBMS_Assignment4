/*Select all the customers who have not placed an order yet.*/
SELECT * FROM customer
WHERE (SELECT COUNT(cust_id) FROM orders WHERE customer.cust_id=orders.cust_id)=0;