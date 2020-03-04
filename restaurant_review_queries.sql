-- List all the reviews for a given restaurant given a specific restaurant ID
SELECT * FROM review WHERE restaurant_id = 2;
-- List all the reviews for a given restaurant, given a specific restaurant name 
SELECT review.review
FROM review, restaurant
WHERE review.restaurant_id = restaurant.id
AND restaurant.name = 'Yard House';

--List all the reviews for a given reviewer, given a specific author name 
SELECT review.review
FROM review
INNER JOIN reviewer
ON review.reviewer_id = reviewer.id
AND reviewer.name = 'Jenna Saunders';

--List all the reviews along with the restaurant they were written for. 
--In the query result, select the restaurant name and the review text.
SELECT restaurant.name, review
FROM restaurant, review
WHERE restaurant.id = review.restaurant_id;

-- List all the reviews along with the restaurant, and the reviewer's name.
    -- The result should have the restaurant name, the review text, and the reviewer name.
    -- Hint: you might need to do a three-way join - i.e. joining all three tables together.