/*Select all the products that have been ordered more than 10 times.*/
SELECT * FROM product
WHERE (SELECT COUNT(product_id) FROM product_in_order WHERE product_in_order.product_id=product.product_id)>10