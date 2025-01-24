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


2️⃣ Regional Performance:
+ Top-Performing Regions:
+ North America and Europe dominated in conversions, with North America contributing 55% of total transactions.
Underperforming Region:
+ Traffic from Asia was growing (accounting for 20% of sessions) but had a low conversion rate of 0.5%.

3️⃣ Device Performance:
Device Trends:
+ Desktop users converted at a higher rate of 3.2%, while mobile users had a lower conversion rate of 1.2%, despite accounting for 60% of total sessions.

4️⃣ Seasonal Trends:
Daily and Seasonal Patterns:
+ Conversion rates spiked during weekends, with Sunday showing the highest conversion rate of 2.8%.
+ Sales peaked during the holiday season in December, contributing 25% of the total revenue for the year.

### Dashboard Design Considerations


### Recommendations:

Here are some actionable recommendations that can be implemented to enhance business performance

1️⃣ SEO Optimization:

+ Identify and prioritize high-intent keywords using tools like Google Keyword Planner.
+ Optimize product pages with relevant meta tags, descriptions, and long-tail keywords to increase discoverability.
+ Monitor bounce rates and average session durations from Organic Search traffic to identify underperforming landing pages.

2️⃣ Referral Campaign Improvement:

+ Review the quality and relevance of referral links, ensuring they lead to engaging and well-optimized landing pages.
+ Partner with high-performing referral sources or influencers in your niche to attract quality traffic.
+ Introduce referral-specific promotions or discounts to incentivize users to complete transactions.

3️⃣ Cultural Localization:

+ Tailor website content and imagery to align with local cultural preferences (e.g., using local languages, and addressing holidays and festivals).
+ Highlight user reviews and testimonials from regional customers to build trust.

4️⃣ Simplify Checkout:

+ Enable one-click checkout options and auto-fill capabilities to minimize friction.
+ Introduce a guest checkout option to reduce barriers for new users.

5️⃣ Test and Iterate:

+ Conduct A/B testing for mobile-specific features like call-to-action buttons, page layouts, and navigation menus.
+ Analyze session recordings to identify common drop-off points.

6️⃣ Seasonal Campaigns:

+ Plan promotional campaigns leading up to key shopping seasons (e.g., Black Friday, Christmas, Lunar New Year).
+ Offer time-limited discounts to create urgency and drive higher conversions.

7️⃣ Omnichannel Promotions:

+ Run synchronized campaigns across multiple channels (e.g., social media, email, and paid ads) to amplify the impact during high-demand periods.
+ Personalize marketing messages for existing customers to increase repeat purchases during seasonal spikes.

## Conclusion

This project provides a comprehensive analysis of Dunamis's e-commerce platform's performance, uncovering valuable insights across marketing channels, regional trends, device usage, and seasonal patterns. By leveraging a data-driven approach, the project has identified key opportunities to optimize business strategies and drive growth.

The findings highlight the strengths of high-performing channels like Organic Search while uncovering areas for improvement, such as Referral Traffic and mobile user experiences. Additionally, the analysis reveals the untapped potential of emerging markets in Asia and the importance of capitalizing on seasonal trends for revenue generation. Recommendations have been made to address these challenges, including SEO optimization, localization strategies, mobile-first improvements, and targeted seasonal campaigns.

By executing the actionable strategies derived from this analysis, the e-commerce platform can achieve:

+ Improved conversion rates across channels and devices.
+ Increased revenue from underperforming regions and user segments.
+ Enhanced customer satisfaction and retention through tailored experiences.
  
All in all, this project demonstrates the power of data analytics in transforming raw data into meaningful insights, empowering the business to make informed, impactful decisions for long-term success.
