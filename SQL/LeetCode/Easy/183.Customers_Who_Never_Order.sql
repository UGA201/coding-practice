SELECT name AS Customers
FROM customers
     LEFT JOIN orders ON customers.id = orders.customerID
WHERE orders.id IS NULL