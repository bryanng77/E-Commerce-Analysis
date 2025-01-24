-- Step 1: Handle missing or null values in key columns
-- This step replaces NULL values in the 'transactions' column with 0,
-- assuming that NULL means no transaction occurred in the session.
UPDATE ecommerce_data
SET transactions = 0
WHERE transactions IS NULL;

-- Step 2: Standardize the 'deviceCategory' values
-- Ensures consistent formatting by converting all deviceCategory values to lowercase.
-- This avoids issues when grouping or comparing data due to inconsistent casing.
UPDATE ecommerce_data
SET deviceCategory = LOWER(deviceCategory);

-- Step 4: Ensure timestamps are in a readable date format
-- Adds a new column 'session_date' to store a human-readable date derived from 'visitStartTime'.
ALTER TABLE ecommerce_data
ADD session_date DATE;

-- Populates the 'session_date' column by converting 'visitStartTime' to a readable date format.
-- CAST is used here to ensure proper date formatting.
-- The data here follows a UNIX timestamp
UPDATE ecommerce_data
SET session_date = DATEADD(SECOND, CAST(visitStartTime AS bigint), '1970-01-01')
WHERE visitStartTime IS NOT NULL;

-- Step 5: Validate and clean geographic information
-- Replaces NULL or blank values in the 'country' column with 'Unknown' to ensure no missing data.
UPDATE ecommerce_data
SET country = 'Unknown'
WHERE country IS NULL OR country = '';

-- Standardizes continent names by converting them to lowercase for consistency.
-- This ensures uniformity when analyzing geographic data.
UPDATE ecommerce_data
SET continent = LOWER(continent);

-- Step 6: Handle potential anomalies in 'transactions'
-- Deletes rows where the 'transactions' value is negative, as such values are invalid.
-- Ensures the integrity of the dataset by removing erroneous data.
DELETE FROM ecommerce_data
WHERE transactions < 0;

-- Step 7: Verify browser data
-- Replaces NULL or unknown browser names with 'Other' to maintain data consistency.
-- This avoids issues caused by missing or inconsistent browser information during analysis.
UPDATE ecommerce_data
SET browser = 'Other'
WHERE browser IS NULL OR browser = '';

-- Step 8: Finally checking the results of data-cleaning
SELECT *
FROM ecommerce_data;
