CREATE TABLE vine_table (
  review_id TEXT PRIMARY KEY,
  star_rating INTEGER,
  helpful_votes INTEGER,
  total_votes INTEGER,
  vine TEXT,
  verified_purchase TEXT
);

-- Read Table
SELECT * from vine_table;

-- Begin Deliverable 2 Instructions

-- STEP 1: Filter the data and create a new DataFrame or table to retrieve all the rows 
-- where the total_votes count is equal to or greater than 20 
-- to pick reviews that are more likely to be helpful and to avoid having division by zero errors later on.
-- & 
-- STEP 2: Filter the new DataFrame or table created in Step 1 and create a new DataFrame or table to retrieve all the rows where 
-- the number of helpful_votes divided by total_votes is equal to or greater than 50%.

SELECT * from vine_table
WHERE total_votes >= 20
AND CAST(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT) >=0.5
;

-- STEP 3: Filter the DataFrame or table created in Step 2, and create a new DataFrame or table that 
-- retrieves all the rows where a review was written as part of the Vine program (paid), vine == 'Y'.
CREATE TABLE vine_paid AS 
	SELECT * from vine_table
	WHERE total_votes >= 20
	AND CAST(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT) >=0.5
	AND vine = 'Y'
;

SELECT * FROM vine_paid;

-- STEP 4: Repeat Step 3, but this time retrieve all the rows where 
-- the review was not part of the Vine program (unpaid), vine == 'N'.
CREATE TABLE vine_unpaid AS 
	SELECT * from vine_table
	WHERE total_votes >= 20
	AND CAST(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT) >=0.5
	AND vine = 'N'
;

SELECT * FROM vine_unpaid;

-- STEP 5: Determine the total number of reviews, the number of 5-star reviews, and the percentage of 5-star reviews 
-- for the two types of review (paid vs unpaid).
SELECT count (review_id) AS total_number_of_reviews 
from vine_table;

SELECT count (review_id) AS five_star_reviews_count
from vine_table
WHERE star_rating >= 5;

SELECT vine, count (review_id) AS five_star_reviews_count, ROUND((count(*) * 100.00 / (select count(*) from vine_table)),2) AS percentage_of_reviews
from vine_table
WHERE star_rating >= 5
GROUP BY vine;



