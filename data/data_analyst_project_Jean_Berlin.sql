-- Q.1 1793 rows
SELECT COUNT(*) 
FROM data_analyst_jobs; 

-- Q.2 Exxon
SELECT * 
FROM data_analyst_jobs
LIMIT 10;

-- Q.3
SELECT COUNT(*) 
FROM data_analyst_jobs
WHERE location = 'TN';
//21 listings

SELECT COUNT(*) 
FROM data_analyst_jobs
WHERE location = 'TN' OR location = 'KY'
//27 listings

-- Q.4 3 listings
SELECT COUNT(*) 
FROM data_analyst_jobs
WHERE location = 'TN' AND star_rating > '4'

-- Q.5 151 reviews
SELECT COUNT(*) 
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000;

-- Q.6 NE - Highest
SELECT location, AVG(star_rating) AS star_rating
FROM data_analyst_jobs
WHERE star_rating IS NOT NULL
GROUP BY 1
ORDER BY 2 DESC;

-- Q.7
SELECT DISTINCT (title)
FROM data_analyst_jobs;

-- How many unique job titles: 881 titles
SELECT COUNT (DISTINCT title)
FROM data_analyst_jobs;

-- Q.8
SELECT DISTINCT (title)
FROM data_analyst_jobs
WHERE location = 'CA';

-- How many are there: 230
SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE location = 'CA';

--Q.9 (review this script)
SELECT location, AVG(star_rating) AS star_rating
FROM data_analyst_jobs
WHERE review_count > '5000'
GROUP BY location;

-- How many? 41 companies 
SELECT company, AVG(star_rating)
FROM data_analyst_jobs
WHERE review_count > 5000
GROUP BY 1
ORDER BY 2 DESC;

-- Q.10
-- Company with highest star rating: General Motors

-- Q.11 754 titles
SELECT COUNT(DISTINCT(title))
FROM data_analyst_jobs
WHERE LOWER title like '%Analyst%';

-- Q.12 26 titles
SELECT COUNT(DISTINCT(title))
FROM data_analyst_jobs
WHERE LOWER (title) NOT ILIKE '%Analyst%'
AND LOWER (title) NOT ILIKE '%Analytics%';

SELECT title
FROM data_analyst_jobs
WHERE LOWER (title) NOT LIKE '%Analyst%'
AND title IS NOT NULL;

// Bonus: Internet (62), Banks (61), Consulting (57)

SELECT domain, COUNT(title)
FROM data_analyst_jobs
WHERE skill LIKE '%SQL%'
AND days_since_posting > 21
AND domain IS NOT NULL
GROUP BY 1
ORDER BY 2 DESC;


