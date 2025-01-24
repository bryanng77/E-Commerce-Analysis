-- Query to analyze performance by marketing channels
-- This query evaluates the performance of each marketing channel by:
-- 1. Counting the total number of sessions.
-- 2. Summing the total number of transactions.
-- 3. Calculating the conversion rate for each channel.
SELECT
    channelGrouping AS channel,
    COUNT(DISTINCT visitId) AS total_sessions, -- Total number of unique sessions per channel
    SUM(CAST(transactions AS float)) AS total_transactions, -- Total number of transactions per channel
    CAST(ROUND(SUM(transactions) * 100.0 / COUNT(DISTINCT visitId), 2) AS float) AS conversion_rate -- Conversion rate (transactions/sessions)
FROM
    ecommerce_data
GROUP BY 
    channelGrouping
ORDER BY 
    total_transactions DESC; -- Sort by channels with the highest transactions

-- Query to analyze regional performance
-- This query analyzes traffic and conversion performance by continent and country.
-- It ranks the top 20 performing countries based on total transactions.
SELECT TOP 20
    continent, -- Geographic continent
    country, -- Geographic country
    COUNT(DISTINCT visitId) AS total_sessions, -- Total number of unique sessions
    SUM(transactions) AS total_transactions, -- Total number of transactions
    CAST(ROUND(SUM(transactions) * 100.0 / COUNT(DISTINCT visitId), 2) AS float) AS conversion_rate -- Conversion rate
FROM
    ecommerce_data
GROUP BY 
    continent, country
ORDER BY 
    total_transactions DESC; -- Sort by countries with the highest transactions

-- Query to compare device performance
-- This query compares the performance of different device categories.
SELECT
    deviceCategory AS device, -- Device category (e.g., desktop, mobile, tablet)
    COUNT(DISTINCT visitId) AS total_sessions, -- Total number of unique sessions per device
    SUM(transactions) AS total_transactions, -- Total transactions per device
    CAST(ROUND(SUM(transactions) * 100.0 / COUNT(DISTINCT visitId), 2) AS float) AS conversion_rate -- Conversion rate
FROM
    ecommerce_data
GROUP BY 
    deviceCategory
ORDER BY 
    total_transactions DESC; -- Sort by devices with the highest transactions

-- Query to analyze sales trends over time (daily)
-- This query tracks daily sales trends to identify peak performance days.
SELECT
    session_date, -- Date of the session
    COUNT(DISTINCT visitId) AS total_sessions, -- Total number of unique sessions on that day
    SUM(transactions) AS total_transactions, -- Total transactions on that day
    CAST(ROUND(SUM(transactions) * 100.0 / COUNT(DISTINCT visitId), 2) AS float) AS conversion_rate -- Daily conversion rate
FROM
    ecommerce_data
GROUP BY 
    session_date
ORDER BY 
    session_date; -- Sort by date to observe trends over time

-- Query to find countries contributing the most to revenue
-- This query identifies the top-performing countries based on transaction volume.
SELECT
    country, -- Geographic country
    COUNT(DISTINCT visitId) AS total_sessions, -- Total number of unique sessions
    SUM(transactions) AS total_transactions, -- Total transactions per country
    ROUND(SUM(transactions) * 100.0 / COUNT(DISTINCT visitId), 2) AS conversion_rate -- Conversion rate
FROM
    ecommerce_data
GROUP BY 
    country
ORDER BY 
    total_transactions DESC; -- Sort by countries with the highest transactions

-- Query to find the most popular browsers among users
-- This query ranks the most used browsers based on session count.
SELECT
    browser, -- Browser name (e.g., Chrome, Safari, Firefox)
    COUNT(DISTINCT visitId) AS total_sessions, -- Total number of unique sessions per browser
    SUM(transactions) AS total_transactions, -- Total transactions per browser
    ROUND(SUM(transactions) * 100.0 / COUNT(DISTINCT visitId), 2) AS conversion_rate -- Conversion rate
FROM
    ecommerce_data
GROUP BY 
    browser
ORDER BY 
    total_sessions DESC; -- Sort by browsers with the highest session count

-- Query to compare user preferences across devices
-- This query analyzes session and transaction data for each device category.
SELECT
    deviceCategory, -- Device category (e.g., desktop, mobile, tablet)
    COUNT(DISTINCT visitId) AS total_sessions, -- Total sessions per device
    SUM(transactions) AS total_transactions, -- Total transactions per device
    ROUND(SUM(transactions) * 100.0 / COUNT(DISTINCT visitId), 2) AS conversion_rate -- Conversion rate
FROM
    ecommerce_data
GROUP BY 
    deviceCategory
ORDER BY 
    total_transactions DESC; -- Sort by devices with the highest transactions

-- Query to find underperforming subregions
-- This query identifies subregions with high session counts but low conversion rates.
SELECT
    continent, -- Geographic continent
    subContinent, -- Subregion within the continent
    COUNT(DISTINCT visitId) AS total_sessions, -- Total sessions per subregion
    SUM(transactions) AS total_transactions, -- Total transactions per subregion
    ROUND(SUM(transactions) * 100.0 / COUNT(DISTINCT visitId), 2) AS conversion_rate -- Conversion rate
FROM
    ecommerce_data
GROUP BY 
    continent, subContinent
ORDER BY 
    total_sessions DESC; -- Sort by subregions with the highest session counts

-- Query to identify channels driving the most new users
-- This query focuses on channels that attract new users (first-time visitors).
SELECT 
    channelGrouping AS channel, -- Marketing channel
    COUNT(DISTINCT CASE WHEN visitNumber = 1 THEN visitId ELSE NULL END) AS new_user_sessions, -- Count of first-time sessions
    SUM(transactions) AS total_transactions, -- Total transactions from new users
    ROUND(SUM(transactions) * 100.0 / COUNT(DISTINCT visitId), 2) AS conversion_rate -- Conversion rate for new users
FROM 
    ecommerce_data
GROUP BY 
    channelGrouping
ORDER BY 
    new_user_sessions DESC; -- Sort by channels with the most new-user sessions

-- Query to analyze channel conversion funnel
-- This query examines which channels convert sessions into transactions.
SELECT 
    channelGrouping AS channel, -- Marketing channel
    COUNT(DISTINCT visitId) AS total_sessions, -- Total sessions per channel
    SUM(CASE WHEN transactions > 0 THEN 1 ELSE 0 END) AS sessions_with_transactions, -- Sessions that resulted in at least one transaction
    ROUND(SUM(CASE WHEN transactions > 0 THEN 1 ELSE 0 END) * 100.0 / COUNT(DISTINCT visitId), 2) AS transaction_conversion_rate -- Conversion rate
FROM 
    ecommerce_data
GROUP BY 
    channelGrouping
ORDER BY 
    transaction_conversion_rate DESC; -- Sort by channels with the highest conversion rate
