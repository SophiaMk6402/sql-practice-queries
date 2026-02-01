-- GROUP BY practice queries
-- In the zomato database, customer reviews and ratings for restaurants are stored in the Reviews table. 
-- To evaluate the overall performance of each restaurant, you need to calculate the average rating for each restaurant.

SELECT restaurant_id, AVG(rating) as average_rating
FROM Reviews
GROUP BY restaurant_id
