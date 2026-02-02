-- Zomato database contains multiple tables storing details related to users, restaurants, orders, payments, delivery partners and coupons.

-- Retrieve the total price of all the orders. 
SELECT order_id , total_price from Orders;

-- Query to get the ID, name and rating of all the restaurants with a rating of 4 or above.
SELECT restaurant_id , name, rating FROM Restaurants WHERE rating >= 4;

-- Retrieve all the orders which were not delivered.
SELECT * FROM Orders WHERE order_status != 'DELIVERED';

-- Retrieve the list of users from Bangalore or registered on Zomato after 2023-01-01. 
SELECT * FROM Users
WHERE created_at > '2023-01-01' OR address = 'Bangalore';

-- Query to get all the undelivered orders after 2024-01-01 to understand the losses. 
SELECT * FROM Orders
WHERE order_status != 'DELIVERED' AND order_date > '2024-01-01'

-- Get all the undelivered orders after 2024-01-01 sorted in the descending order of the total_price coloumn.
SELECT * FROM Orders
WHERE order_status != 'DELIVERED'
AND order_date > '2024-01-01'
ORDER BY total_price DESC;

-- Get the list of users sorted in the descending order of their account creation dates with ties broken by sorting names alphabetically in ascending order.
SELECT * FROM Users
ORDER BY created_at DESC, name ASC;

-- fetch the details of restaurants sorted in the descending order of rating.
--Return only 15 rows and Skip the first 15 rows
SELECT * FROM Restaurants
ORDER BY rating DESC
LIMIT 15
OFFSET 15;
