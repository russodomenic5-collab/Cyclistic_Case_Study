--Data Exploration

-- Portrays data from first 10 rows the the combined_trips table

SELECT *
FROM cyclistic-468813.Cyclistic.combined_trips
LIMIT 10;

--checks the number of rows in the combined_trips table (5,611,500)

SELECT  COUNT(*) AS total_rows
FROM cyclistic-468813.Cyclistic.combined_trips;

--portrays each columns data type (string, float, etc.) in the combined_trips table

SELECT  column_name, data_type
FROM cyclistic-468813.Cyclistic.INFORMATION_SCHEMA.COLUMNS
WHERE table_name = 'combined_trips';

--checks number of null values in all columns of the combined_trips table and names each column starting with 'null'

SELECT
COUNT(*) - COUNT(ride_id) AS null_ride_id,
COUNT(*) - COUNT(rideable_type) AS null_rideable_type,
COUNT(*) - COUNT(started_at) AS null_started_at,
COUNT(*) - COUNT(ended_at) AS null_ended_at,
COUNT(*) - COUNT(start_station_name) AS null_start_station_name,
COUNT(*) - COUNT(start_station_id) AS null_start_station_id,
COUNT(*) - COUNT(end_station_name) AS null_end_station_name,
COUNT(*) - COUNT(end_station_id) AS null_end_station_id,
COUNT(*) - COUNT(start_lat) AS null_start_lat,
COUNT(*) - COUNT(start_lng) AS null_start_lng,
COUNT(*) - COUNT(end_lat) AS null_end_lat,
COUNT(*) - COUNT (end_lng) AS null_end_lng,
COUNT(*) - COUNT(member_casual) AS null_member_casual
FROM cyclistic-468813.Cyclistic.combined_trips;

--checking for duplicate rows in the ride_id column of the combined_trips table (none detected)

SELECT COUNT(ride_id) - COUNT(DISTINCT ride_id) AS duplicate_rows
FROM cyclistic-468813.Cyclistic.combined_trips;

--checking to make sure all ride_ids have the same amount of digits (all have 16 digits)

SELECT  LENGTH(ride_id) AS length_ride_id, COUNT(ride_id) AS num_of_rows
FROM cyclistic-468813.Cyclistic.combined_trips
GROUP BY  length_ride_id;

--checking how many types of bikes there are and how many rides per bike type were taken in the combined_trips table

SELECT  DISTINCT rideable_type, COUNT(rideable_type) AS num_of_trips
FROM cyclistic-468813.Cyclistic.combined_trips
GROUP BY  rideable_type;

--checking to confirm the number of different membership types (2 total) and how many there are for each

SELECT  DISTINCT(member_casual) AS membership_type, COUNT(member_casual) AS num_of_members
FROM cyclistic-468813.Cyclistic.combined_trips
GROUP BY  member_casual;

--displays first 10 rows of start times and end times for rides in combined_trips table
 
SELECT  started_at, ended_at
FROM cyclistic-468813.Cyclistic.combined_trips
LIMIT 10;

--displays the number of rides that are longer than a day in the combined_trips table (6,046 total)

SELECT COUNT(*) AS longer_than_a_day,
FROM cyclistic-468813.Cyclistic.combined_trips
WHERE TIMESTAMP_DIFF(ended_at, started_at, MINUTE) >= 1440;

--displays the number of rides that were less than a minute in the combined_trips table (245,817 total)

SELECT COUNT(*) AS less_than_a_min
FROM cyclistic-468813.Cyclistic.combined_trips
WHERE TIMESTAMP_DIFF(ended_at, started_at, MINUTE) <= 1;

--shows the distinct names or every start station (1891 different names including 'null')

SELECT DISTINCT start_station_name
FROM cyclistic-468813.Cyclistic.combined_trips
ORDER BY start_station_name;

--displays the amount of rides that had no start station name or ID (1,125,388)

SELECT  COUNT(ride_id) AS rows_with_start_station_null
FROM cyclistic-468813.Cyclistic.combined_trips
WHERE start_station_name IS NULL OR start_station_id IS NULL;

--displays every distinct end station name (1895 total including'null')

SELECT DISTINCT end_station_name
FROM cyclistic-468813.Cyclistic.combined_trips
ORDER BY end_station_name;

--displays the amount of rides with no end station name or ID (1,161,767)

SELECT COUNT(ride_id) AS rows_with_null_end_station
FROM cyclistic-468813.Cyclistic.combined_trips
WHERE end_station_name IS NULL OR end_station_ID IS NULL;

--displays all rides with no end location (lat or lng, 5,910 total)

SELECT COUNT(ride_id) AS rows_with_no_end_location
FROM cyclistic-468813.Cyclistic.combined_trips
WHERE end_lat IS NULL or end_lng IS NULL;
