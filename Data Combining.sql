-- Data Combining

--combining all 12 data tables into one (Aug2024-July2025)

CREATE OR REPLACE TABLE cyclistic-468813.Cyclistic.combined_trips AS 
 (
  SELECT  * FROM cyclistic-468813.Cyclistic.August_2024
  UNION ALL
  SELECT  * FROM cyclistic-468813.Cyclistic.Sept_2024
  UNION ALL
  SELECT  * FROM cyclistic-468813.Cyclistic.Oct_2024
  UNION ALL
  SELECT  * FROM cyclistic-468813.Cyclistic.Nov_2024
  UNION ALL 
  SELECT  * FROM cyclistic-468813.Cyclistic.Dec_2024
  UNION ALL
  SELECT  * FROM cyclistic-468813.Cyclistic.Jan_2025
  UNION ALL 
  SELECT  * FROM cyclistic-468813.Cyclistic.Feb_2025
  UNION ALL
  SELECT  * FROM cyclistic-468813.Cyclistic.Mar_2025
  UNION ALL
  SELECT  * FROM cyclistic-468813.Cyclistic.Apr_2025
  UNION ALL
  SELECT  * FROM cyclistic-468813.Cyclistic.May_2025
  UNION ALL 
  SELECT  * FROM cyclistic-468813.Cyclistic.June_2025
  UNION ALL
  SELECT  * FROM cyclistic-468813.Cyclistic.July_2025
);


