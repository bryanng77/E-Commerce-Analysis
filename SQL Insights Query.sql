-- This query calculates the average rating for each brand
-- and ranks the top 10 brands with the highest average ratings.
SELECT 
    Brand,
    ROUND(AVG(CAST(Stars AS FLOAT)), 2) AS Avg_Rating,
    COUNT(*) AS Total_Reviews
FROM ramen_ratings
WHERE Stars IS NOT NULL  -- Exclude missing ratings
GROUP BY Brand
ORDER BY Avg_Rating DESC
LIMIT 10;

-- This query counts how many times each brand appears in the "Top Ten" list.
SELECT 
    Brand, 
    COUNT(*) AS Top_Ten_Appearances
FROM ramen_ratings
WHERE Top_Ten IS NOT NULL  -- Only include brands that appeared in Top Ten
GROUP BY Brand
ORDER BY Top_Ten_Appearances DESC
LIMIT 10;

-- This query calculates the average ramen rating for each country.
SELECT 
    Country, 
    ROUND(AVG(CAST(Stars AS FLOAT)), 2) AS Avg_Rating,
    COUNT(*) AS Total_Reviews
FROM ramen_ratings
WHERE Stars IS NOT NULL
GROUP BY Country
ORDER BY Avg_Rating DESC;

-- This query finds which country has the highest number of reviewed ramen.
SELECT 
    Country, 
    COUNT(*) AS Total_Reviews
FROM ramen_ratings
GROUP BY Country
ORDER BY Total_Reviews DESC
LIMIT 1;

-- This query calculates the average rating for each ramen style (Cup, Pack, Bowl, Tray).
SELECT 
    Style, 
    ROUND(AVG(CAST(Stars AS FLOAT)), 2) AS Avg_Rating,
    COUNT(*) AS Total_Reviews
FROM ramen_ratings
WHERE Stars IS NOT NULL
GROUP BY Style
ORDER BY Avg_Rating DESC;

-- This query counts the number of times each ramen style appears in the dataset.
SELECT 
    Style, 
    COUNT(*) AS Total_Reviews
FROM ramen_ratings
GROUP BY Style
ORDER BY Total_Reviews DESC;

-- If the dataset has a date column, this will show the newest brands.
SELECT DISTINCT Brand
FROM ramen_ratings
ORDER BY Review_ID DESC
LIMIT 10;

-- This query finds the highest-rated ramen from the dataset.
SELECT 
    Brand, 
    Variety, 
    Style, 
    Country, 
    Stars AS Rating
FROM ramen_ratings
WHERE Stars = (SELECT MAX(CAST(Stars AS FLOAT)) FROM ramen_ratings);
