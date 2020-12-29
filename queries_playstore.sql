-- Comments in SQL Start with dash-dash --
-- table structure: 
-- id              | 1
-- app_name        | Facebook
-- category        | SOCIAL
-- rating          | 4.1
-- reviews         | 78158306
-- size            | Varies with device
-- min_installs    | 1000000000
-- price           | 0
-- content_rating  | Teen
-- genres          | {Social}
-- last_updated    | 2018-08-03
-- current_version | Varies with device
-- android_version | Varies with device 


-- question 1 answer: --
SELECT app_name FROM analytics WHERE id = 1880;

-- question 2 answer: --
SELECT id, app_name FROM analytics WHERE last_updated = '2018-08-01';

-- question 3 answer: --
SELECT category, COUNT(category) FROM analytics GROUP BY category;

--question 4 answer: --
SELECT * FROM analytics ORDER BY reviews DESC LIMIT 5;

-- question 5 answer: --
SELECT app_name FROM analytics WHERE rating >= 4.8 ORDER BY reviews DESC LIMIT 1;

-- question 6 answer: --
SELECT category, AVG(rating) FROM analytics GROUP BY category ORDER BY AVG(rating) DESC;

--question 7 answer: --
SELECT app_name, price, rating FROM analytics WHERE rating < 3 ORDER BY price DESC LIMIT 1;

--question 8 answer: --
SELECT * FROM analytics WHERE min_installs < 50 AND rating > 0 ORDER BY rating DESC;

--question 9 answer: --
SELECT app_name FROM analytics WHERE rating < 3 AND reviews >= 10000;

--question 10 answer: --
SELECT * FROM analytics WHERE price >= 0.1 AND price <= 1 ORDER BY reviews DESC LIMIT 10;

--question 11 answer: --
SELECT * FROM analytics ORDER BY last_updated LIMIT 1;

-- question 12 answer --
SELECT * FROM analytics ORDER BY price DESC LIMIT 1;

--question 13 answer --
SELECT SUM(reviews) FROM analytics;

--question 14 answer --
SELECT category, COUNT(category) FROM analytics GROUP BY category HAVING COUNT(*) > 300;

--question 15 answer --
SELECT app_name, reviews, min_installs, min_installs/reviews FROM analytics WHERE min_installs > 100000 ORDER BY min_installs/reviews DESC LIMIT 1

