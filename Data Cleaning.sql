-- Data Cleaning

--creates a new cleaned table called 'combined_trips_cleaned'

CREATE TABLE IF NOT EXISTS Cyclistic.cleaned_combined_trips AS
SELECT 
ride_id,
rideable_type,
started_at,
ended_at,

--creates new column in the new table called ride_length based on total minutes per ride
TIMESTAMP_DIFF(ended_at, started_at, MINUTE) AS ride_length,

--assigns a day of week to each value (1=Sunday, 2=Monday, etc.)
CASE EXTRACT(DAYOFWEEK FROM started_at)
WHEN 1 THEN 'SUN'
WHEN 2 THEN 'MON'
WHEN 3 THEN 'TUE'
WHEN 4 THEN 'WED'
WHEN 5 THEN 'THURS'
WHEN 6 THEN 'FRI'
WHEN 7 THEN 'SAT'
END AS day_of_week, --Case/End, creates day of week column in the new table with days assigned to each ride

--assigns a month to each value in the new table (1=January, 2=February, etc.)
CASE EXTRACT(MONTH FROM started_at)
WHEN 1 THEN 'JAN'
WHEN 2 THEN 'FEB'
WHEN 3 THEN 'MAR'
WHEN 4 THEN 'APR'
WHEN 5 THEN 'MAY'
WHEN 6 THEN 'JUN'
WHEN 7 THEN 'JUL'
WHEN 8 THEN 'AUG'
WHEN 9 THEN 'SEP'
WHEN 10 THEN 'OCT'
WHEN 11 THEN 'NOV'
WHEN 12 THEN 'DEC'
END AS month, --Case/End creates a new column called month in the new table with months assigned to each ride

start_station_name,
end_station_name,
start_lat,
start_lng,
end_lat,
end_lng,
member_casual

FROM `cyclistic-468813.Cyclistic.combined_trips`

--removes any null values from the columns below in the new table
WHERE start_station_name IS NOT NULL
AND end_station_name IS NOT NULL
AND end_lat IS NOT NULL
AND end_lng IS NOT NULL
AND TIMESTAMP_DIFF(ended_at, started_at, MINUTE) > 1 --removes any rides that were less than a minute long in the new table
AND TIMESTAMP_DIFF( ended_at, started_at, MINUTE) < 1440; --removes any rides that were more than a day long in the new table
