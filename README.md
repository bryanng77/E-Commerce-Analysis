# 🛒 Dunamis Ecommerce Analysis

## Project Background
Dunamis, a mid-sized e-commerce platform specializing in lifestyle and home goods, was making waves in the competitive online retail market. Known for its curated collection of stylish and affordable products, the company had built a loyal customer base and was steadily expanding its reach. With traffic pouring in from organic search, social media referrals, and email marketing campaigns, Dunamis seemed to be on track for an explosive growth.

Despite the increasing number of visitors to their site, conversion rates had hit a plateau. The leadership team noticed an unsettling trend: thousands of users browsed their site, added items to their carts, and then abandoned their purchases. Marketing campaigns designed to bring in new customers yielded diminishing returns, leaving the team questioning whether they were targeting the right audiences or wasting precious resources.

As the stakes grew higher, the leadership team in Dunamis faced critical questions:

+ Why were certain marketing campaigns falling flat?
+ Which customer segments were driving the most value—and which ones were disengaged?
+ How could they turn a flood of website traffic into meaningful sales?

The truth was that Dunamis had mountains of data at their fingertips, but they could not transform that data into actionable insights. Customer behavior across devices, channels, and regions remained a puzzle, and untapped opportunities were slipping through the cracks.

## Objectives

After speaking to the E-commerce team, these were some of the objectives that they would like the data team to uncover:

1️⃣ Unlock the Potential of Marketing Channels:
+ Which channels were delivering the highest ROI? Which campaigns were wasting the budget?
+ Were their social media referrals bringing in the right audience or just empty traffic?

2️⃣ Unravel Regional Performance:
+ While North America and Europe were performing well, traffic from Asia was growing but converting poorly. Was this due to cultural mismatches, logistical issues, or something else?

3️⃣ Optimize Mobile Experience:
+ Mobile users made up the majority of sessions but lagged far behind desktop users in conversion rates. Why were they dropping off?

4️⃣ Leverage Seasonal Trends:
+ Sales seemed to spike during certain periods, but the team lacked the tools to predict and capitalize on these trends effectively.

## Data Content

The SQL queries utilized to clean, organize, and prepare data for the dashboard can be found [**here.**](https://github.com/bryanng77/E-Commerce-Analysis/blob/main/Data%20Cleaning_Ecommerce-Analysis.sql)

Targeted SQL Queries regarding various business questions can be found [**here.**](https://github.com/bryanng77/E-Commerce-Analysis/blob/main/SQL%20Business%20Questions%20Queries_Ecommerce-Analysis.sql)

## Data Structure and Initial Checks

The database structure as seen below consists of a single table, Ecommerce_Data, with a total row count of 2556 records.

![Screenshot 2025-01-24 at 5 18 11 PM](https://github.com/user-attachments/assets/ee6f4c34-c1e8-47b7-8226-9b5af1d2c2a3)

Before beginning the analysis, various checks were conducted for quality control and familiarization with the datasets. The SQL queries utilized to inspect and perform the quality checks can be found [**here.**](https://github.com/bryanng77/E-Commerce-Analysis/blob/main/Data%20Cleaning_Ecommerce-Analysis.sql)

## Executive Summary

### Overview of Findings

1️⃣ Marketing Channel Performance:

Top Channels:
+ Organic Search contributed 40% of total sessions and had a conversion rate of 2.5%, making it the most reliable channel for driving valuable traffic.
+ Referral Traffic had a conversion rate of only 0.8%, indicating potential for optimization in referral campaigns.

Recommendation: Strengthen SEO strategies and optimize referral landing pages to improve user engagement and conversion.

2️⃣ Regional Performance:
+ Top-Performing Regions:
+ North America and Europe dominated in conversions, with North America contributing 55% of total transactions.
Underperforming Region:
+ Traffic from Asia was growing (accounting for 20% of sessions) but had a low conversion rate of 0.5%.
  
Recommendation: Tailor marketing strategies for Asia by localizing content, offering region-specific payment methods, and addressing potential logistical barriers.

3️⃣ Device Performance:
Device Trends:
+ Desktop users converted at a higher rate of 3.2%, while mobile users had a lower conversion rate of 1.2%, despite accounting for 60% of total sessions.
+ Recommendation: Optimize the mobile user experience by improving site speed, streamlining navigation, and simplifying the checkout process.

4️⃣ Seasonal Trends:
Daily and Seasonal Patterns:
+ Conversion rates spiked during weekends, with Sunday showing the highest conversion rate of 2.8%.
+ Sales peaked during the holiday season in December, contributing 25% of the total revenue for the year.

Recommendation: Plan targeted promotions during peak periods and launch pre-holiday campaigns to capitalize on high user activity.

### Dashboard Design Considerations


#### Recommendations:


## Conclusion

