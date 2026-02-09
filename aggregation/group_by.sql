-- GROUP BY practice queries
-- In the zomato database, customer reviews and ratings for restaurants are stored in the Reviews table. 
-- To evaluate the overall performance of each restaurant, you need to calculate the average rating for each restaurant.

SELECT restaurant_id, AVG(rating) as average_rating
FROM Reviews
GROUP BY restaurant_id

-- Table: Person
-- Column Name : id , email 
-- Write a solution to report all the duplicate emails. Note that it's guaranteed that the email field is not NULL.

SELECT email FROM Person 
group by email
having count(email) > 1 
