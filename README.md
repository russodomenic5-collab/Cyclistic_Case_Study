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
Now that we have determined our business task and key question at hand, it's time to take the steps in preparing the data for eventual cleaning and analysis. As mentioned previously, we will be using the [divvy_tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html) data to access historical ride information for our analysis. Within the trip data, there are files for each month beginning at April 2020 and ending at August 2025. For this case study, we will be using the ride data from **August 2024 through July 2025**. Each file has the same naming convention of YYYYMM-divvy-tripdata and includes the same information such as ride id, bike type, start times and stations, end times and stations, and whether the rider is a member or a casual. The data has been made available by Motivate International Inc. under this [license](https://divvybikes.com/data-license-agreement). 

This is public data that you can use to explore how different customer types are using Cyclistic bikes. But note that data-privacy issues prohibit you from using riders’ personally identifiable information. This means that we won’t be able to connect pass purchases to credit card numbers to determine if casual riders live in the Cyclistic service area or if they have purchased multiple.

During this phase, it's important to recognize where the data is located and how it is organzied, allowing you to better underdstand how to work with the data efficently. Taking into account the integrity of the data and how the information provided helps answer your question is also important, as this will contribute to a reliable analysis.

## Process
With the data prepared and downloaded, it's now time to begin the processing phase. Looking at the 12 Cyclistic files we have downloaded, there is a total count of ~5.6 million rows of data. Since Microsoft Excel can only have ~1 million rows of data within a worksheet (not meant to manage large amounts of data), we will be using BigQuery to combine the various datasets into one before cleaning and analyzing. 
### Combining the Data
SQL Query: [Combining the Data](https://github.com/russodomenic5-collab/Cyclistic_Case_Study/blob/main/Data%20Combining.sql)

In this step, we have downloaded each of the 12 months of data into BigQuery. Now that they are located within the warehouse, we will use SQL code to combine each of the datasets into one new dataset called combined_trips, containing 5,611,500 rows of data for the entire year.

<img width="359" height="680" alt="Snip_TEMP0001" src="https://github.com/user-attachments/assets/abd66549-e843-4e64-b2b9-a06c4772d604" />

### Exploring the Data
SQL Query: [Exploring the Data](https://github.com/russodomenic5-collab/Cyclistic_Case_Study/blob/main/Data%20Exploration.sql) 

Using our new dataset (combined_trips), we can now use SQL code to explore the data, helping us gain better insights on it's content. Exploring the data gives us a head start on narrowing down what to include/exclude for our analysis, while also allowing us to find any errors or inconsistencies that will need to be addressed during the cleaning phase. Below are some of the results from the queries I've run to familiarize myself with the data:

**1. Total Number of Rows**<br>

<img width="546" height="51" alt="Snip_TEMP0001" src="https://github.com/user-attachments/assets/62078ce9-41f8-422f-bb2b-eb24e8ecc7c0" /> <br>

**2. Column Names and Data Types**

As shown below, there are 3 different data types in the combined_trips dataset with the **ride_id** column as the primary key.

<img width="461" height="380" alt="Snip_TEMP0001" src="https://github.com/user-attachments/assets/187133fd-db77-4e33-a3c3-34a62327f405" /> <br>

**3. Total Null Values in Each Column**

Below we can see the number of **null values** in each column. Knowing this information is vital, since we will not be utilizing any null values for our analysis. We now know which columns need to be addressed during our cleaning process.

<img width="949" height="34" alt="Snip_TEMP0001" src="https://github.com/user-attachments/assets/9c0bf0bf-1528-42d1-bebc-b36d2a1bc162" /> <br>

**4. Duplicate ride_id's & Length of ride_id's**

There are no duplicate ride_id's in our combined_trips dataset, meaning we won't have to address the ride_id column duirng our cleaning. We have also confirmed every ride_id has the same amount of values (16 total)

<img width="342" height="52" alt="Snip_TEMP0001" src="https://github.com/user-attachments/assets/1007d699-d313-4903-b6c6-867d82f7fe26" />

<img width="397" height="52" alt="Snip_TEMP0001" src="https://github.com/user-attachments/assets/edd9423c-3822-4428-a71d-e4b2b5385fdd" /> 


**5. Number of Trips per Rideable Type**

There are 3 different rideable types that are observed, with electric bikes being the most popular, and electric scooters being the least popular.

<img width="391" height="110" alt="Snip_TEMP0001" src="https://github.com/user-attachments/assets/63533cfa-041b-4fde-abc3-a7eceeaf8f6e" /> <br>

**6. Number of Trips per Rider Type**

As shown, there are two types of riders: **members** and **casuals**, with members being the more popular type.

<img width="388" height="81" alt="Snip_TEMP0001" src="https://github.com/user-attachments/assets/a2f2b523-3fb1-4e55-b209-71d55bd574a7" /> <br>






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
