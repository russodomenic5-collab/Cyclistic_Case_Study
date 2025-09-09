--Data Analysis

--displays the total number of rides taken (3,766,232)
SELECT COUNT(*) AS total_rides
FROM Cyclistic.cleaned_combined_trips;

--gives the average trip duration in minutes (15.76 minutes)
SELECT 
  ROUND(AVG(ride_length), 2) AS avg_ride_length_min
FROM Cyclistic.cleaned_combined_trips;

--displays the total number of rides and average ride length for members & casual users
SELECT 
  member_casual,
  COUNT(*) AS rides,
  ROUND(AVG(ride_length), 2) AS avg_ride_length_min
FROM Cyclistic.cleaned_combined_trips
GROUP BY member_casual;

--displays number of rides each day of the week, along with the average ride length for each day
SELECT 
  day_of_week,
  COUNT(*) AS rides,
  ROUND(AVG(ride_length), 2) AS avg_ride_length_min
FROM Cyclistic.cleaned_combined_trips
GROUP BY day_of_week
ORDER BY 
  CASE day_of_week
    WHEN 'SUN' THEN 1
    WHEN 'MON' THEN 2
    WHEN 'TUES' THEN 3
    WHEN 'WED' THEN 4
    WHEN 'THURS' THEN 5
    WHEN 'FRI' THEN 6
    WHEN 'SAT' THEN 7
  END;

  SELECT 
  day_of_week,

  --displays total rides per user type (member & casual)
  COUNTIF(member_casual = 'member') AS member_rides,
  COUNTIF(member_casual = 'casual') AS casual_rides,

  --displays average ride length in minutes for each user type (member & casual)
  ROUND(AVG(CASE WHEN member_casual = 'member' THEN ride_length END), 2) AS avg_member_length_min,
  ROUND(AVG(CASE WHEN member_casual = 'casual' THEN ride_length END), 2) AS avg_casual_length_min

FROM Cyclistic.cleaned_combined_trips

GROUP BY day_of_week --groups the total rides and average ride length or each user type (member & casual) by each day of the week
ORDER BY 
  CASE day_of_week
    WHEN 'SUN' THEN 1
    WHEN 'MON' THEN 2
    WHEN 'TUES' THEN 3
    WHEN 'WED' THEN 4
    WHEN 'THURS' THEN 5
    WHEN 'FRI' THEN 6
    WHEN 'SAT' THEN 7
  END;

--displays the total amount of rides and average ride length per month for all users(members & casual users combined)
SELECT 
  month,
  COUNT(*) AS rides,
  ROUND(AVG(ride_length), 2) AS avg_ride_length_min
FROM Cyclistic.cleaned_combined_trips
GROUP BY month
ORDER BY 
  CASE month
    WHEN 'JAN' THEN 1
    WHEN 'FEB' THEN 2
    WHEN 'MAR' THEN 3
    WHEN 'APR' THEN 4
    WHEN 'MAY' THEN 5
    WHEN 'JUN' THEN 6
    WHEN 'JUL' THEN 7
    WHEN 'AUG' THEN 8
    WHEN 'SEP' THEN 9
    WHEN 'OCT' THEN 10
    WHEN 'NOV' THEN 11
    WHEN 'DEC' THEN 12
  END;

SELECT 
  month,

  --displays total rides per user type (member & casual)
  COUNTIF(member_casual = 'member') AS member_rides,
  COUNTIF(member_casual = 'casual') AS casual_rides,

  --displays average ride length in minutes (rounded to 2 decimal places) for each user type (member & casual)
  ROUND(AVG(CASE WHEN member_casual = 'member' THEN ride_length END), 2) AS avg_member_length_min,
  ROUND(AVG(CASE WHEN member_casual = 'casual' THEN ride_length END), 2) AS avg_casual_length_min

FROM Cyclistic.cleaned_combined_trips

GROUP BY month --groups total rides and average ride length for each user type (member & casual) by month, orders the months in ascending order (Jan-Dec)
ORDER BY 
  CASE month
    WHEN 'JAN' THEN 1
    WHEN 'FEB' THEN 2
    WHEN 'MAR' THEN 3
    WHEN 'APR' THEN 4
    WHEN 'MAY' THEN 5
    WHEN 'JUN' THEN 6
    WHEN 'JUL' THEN 7
    WHEN 'AUG' THEN 8
    WHEN 'SEP' THEN 9
    WHEN 'OCT' THEN 10
    WHEN 'NOV' THEN 11
    WHEN 'DEC' THEN 12
  END;

--displays start stations in descending alphabetical order per rider type
SELECT 
  start_station_name,
  member_casual,
  start_lat,
  start_lng,
  COUNT(*) AS rides
FROM Cyclistic.cleaned_combined_trips
GROUP BY start_station_name, member_casual, start_lat, start_lng
ORDER BY start_station_name, member_casual;

--displays end stations in descending alphabetical order per rider type
SELECT 
  end_station_name,
  member_casual,
  end_lat,
  end_lng,
  COUNT(*) AS rides
FROM Cyclistic.cleaned_combined_trips
GROUP BY end_station_name, member_casual, end_lat, end_lng
ORDER BY end_station_name, member_casual;


--groups rides per rider type into categories by length in minutes (0-5 minutes, 6-15 minutes, etc.)
SELECT
  CASE 
    WHEN ride_length <= 5 THEN '0–5 min'
    WHEN ride_length <= 15 THEN '6–15 min'
    WHEN ride_length <= 30 THEN '16–30 min'
    WHEN ride_length <= 60 THEN '31–60 min'
    ELSE '60+ min'
  END AS ride_length_bucket,
  member_casual,
  COUNT(*) AS rides
FROM Cyclistic.cleaned_combined_trips
GROUP BY ride_length_bucket, member_casual
ORDER BY 
  CASE ride_length_bucket
    WHEN '0–5 min' THEN 1
    WHEN '6–15 min' THEN 2
    WHEN '16–30 min' THEN 3
    WHEN '31–60 min' THEN 4
    WHEN '60+ min' THEN 5
  END;

--displays total trips by each rideable type (classic, electric, electric scooter) for each user type (member & casual)
SELECT 
  rideable_type,
  COUNTIF(member_casual = 'member') AS member_total_trips,
  COUNTIF(member_casual = 'casual') AS casual_total_trips,
  COUNT(*) AS overall_total_trips
FROM Cyclistic.cleaned_combined_trips
GROUP BY rideable_type
ORDER BY overall_total_trips DESC;
