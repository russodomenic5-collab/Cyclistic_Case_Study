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

## 🎯 Business Task / Question: How do annual members and casual riders use Cyclistic bikes differently?



## Highlights
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
