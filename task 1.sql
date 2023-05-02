/*Select all the products that have a price greater than the average price of all products.*/
SELECT * FROM product
WHERE product_price>(SELECT AVG(product_price) FROM product)
ORDER BY product_price ASC;