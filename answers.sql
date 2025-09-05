-- Question 1
-- INNER JOIN: Get employee details with their office code 

USE salesDb;

SELECT 
    e.firstName, e.lastName, e.email, o.officeCode
FROM
    employees AS e
        INNER JOIN
    offices AS o ON e.officeCode = o.officeCode;


-- Question 2
-- LEFT JOIN: Get product details with their product line

SELECT 
    p.productName, p.productVendor, pl.productLine
FROM
    products AS p
        LEFT JOIN
    productlines AS pl ON p.productLine = pl.productLine;


-- Question 3
-- RIGHT JOIN + Aggregation (LIMIT): Get first 10 orders

SELECT 
    o.orderDate, o.shippedDate, o.status, c.customerNumber
FROM
    customers AS c
        RIGHT JOIN
    orders AS o ON o.customerNumber = c.customerNumber
ORDER BY orderDate ASC
LIMIT 10;