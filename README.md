# Cyclistic Case Study - Google Data Analytics Professional Certificate

## 📖 Project Overview
Throughout this case study, I will be taking on the role of a junior analyst tasked with providing insights on Cyclistic, a fictional bike company located in Chicago. Utilizing each phase of the data analysis process ([Ask](), [Prepare](), [Process](), [Analyze](), [Share](), and [Act]()), I will leverage data to answer key business questions, contributing to insightful, data driven decisions.

### Links:
Data Source: [divvy_tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html) (Data for this case study utilizes the following months: August 2024-July 2025)

SQL Queries:
[1) Combining the Data](https://github.com/russodomenic5-collab/Cyclistic_Case_Study/blob/main/Data%20Combining.sql)
[2) Exploring the Data](https://github.com/russodomenic5-collab/Cyclistic_Case_Study/blob/main/Data%20Exploration.sql)
[3) Cleaning the Data](https://github.com/russodomenic5-collab/Cyclistic_Case_Study/blob/main/Data%20Cleaning.sql)
[4) Analyzing the Data](https://github.com/russodomenic5-collab/Cyclistic_Case_Study/blob/main/Data%20Analysis.sql)

Visualizations: [Tableau](https://public.tableau.com/views/CyclisticCaseStudyHowMembersandCasualsRideDifferently/CyclisticUsageRideVolumeandDurationbyRiderType?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)
## Background
Cyclistic: A bike-share program that features more than 5,800 bicycles and 600 docking stations. Cyclistic sets itself apart by also offering reclining bikes, hand tricycles, and cargo bikes, making bike-share more inclusive to people with disabilities and riders who can’t use a standard two-wheeled bike. The majority of riders opt for traditional bikes; about 8% of riders use the assistive options. Cyclistic users are more likely to ride for leisure, but about 30% use the bikes to commute to work each day.

Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to broad consumer segments. One approach that helped make these things possible was the flexibility of its pricing plans: single-ride passes, full-day passes, and annual memberships. Customers who purchase single-ride or full-day passes are referred to as casual riders. Customers who purchase annual memberships are Cyclistic members.

Cyclistic’s finance analysts have concluded that annual members are much more profitable than casual riders. Although the pricing flexibility helps Cyclistic attract more customers, Lily Moreno (director of marketing and my manager) believes that maximizing the number of annual members will be key to future growth. Rather than creating a marketing campaign that targets all-new customers, Moreno believes there is a solid opportunity to convert casual riders into members. She notes that casual riders are already aware of the Cyclistic program and have chosen Cyclistic for their mobility needs.

Moreno has set a clear goal: Design marketing strategies aimed at converting casual riders into annual members. In order to do that, however, the team needs to better understand how annual members and casual riders differ, why casual riders would buy a membership, and how digital media could affect their marketing tactics. Moreno and her team are interested in analyzing the Cyclistic historical bike trip data to identify trends.

## Ask
### 🎯 Business Task:
Design marketing strategies aimed at converting casual riders into annual members.
### Questions
Three questions will guide the future marketing program:
1. How do annual members and casual riders use Cyclistic bikes differently?
2. Why would casual riders buy Cyclistic annual memberships?
3. How can Cyclistic use digital media to influence casual riders to become members?

For this case study, I have been assigned the first question to answer: **How do annual members and casual
riders use Cyclistic bikes differently?**

## Prepare
Now that we have determined our business task and key question at hand, it's time to take the steps in preparing the data for eventual cleaning and analysis. As mentioned previously, we will be using the [divvy_tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html) file to access historical ride data from August 2024-July 2025. The data has been made available by Motivate International Inc. under this [license](https://divvybikes.com/data-license-agreement) This is public data that you can use to explore how different customer types are using Cyclistic bikes. But note that data-privacy issues prohibit you from using riders’ personally identifiable information. This means that you won’t be able to connect pass purchases to credit card numbers to determine if casual riders live in the Cyclistic service area or if they have purchased multiple## Highlights
- Cleaned & modeled ~4M trip records in BigQuery.
- Built 7 dashboards: Rider Distribution, Weekly Trends, Monthly Trends, Rideable Types, Ride Duration, Start/End Maps.
- Key findings:
  - Members ride more frequently; casuals have longer average rides.
  - Members peak on weekdays; casuals on weekends and summer months.
  - Standard bikes dominate; casuals show higher electric-bike use in leisure areas.

## Repo structure
SQL/ -- SQL scripts (cleaning, exploration, analysis)
Data/ -- small sample CSVs to reproduce parts
Tableau/ -- packaged workbook for dashboards
Assets/ -- screenshots for README
Docs/ -- case study PDF and slide deck
