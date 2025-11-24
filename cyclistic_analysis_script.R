# Cyclistic Bike-Share Analysis Script
# Author: Gabriel Marín Huerta
# Date: November 2025

# 1. LOAD LIBRARIES
library(tidyverse)  # For data wrangling
library(lubridate)  # For date attributes
library(ggplot2)    # For visualization

# 2. IMPORT DATA (Simulation for Portfolio)
# Note: In a real environment, datasets are loaded here.
# q1_2019 <- read_csv("Divvy_Trips_2019_Q1.csv")
# q1_2020 <- read_csv("Divvy_Trips_2020_Q1.csv")

# 3. DATA CLEANING & PROCESSING
# Merge data (Conceptual step)
# all_trips <- bind_rows(q1_2019, q1_2020)

# Feature Engineering: Create ride_length and day_of_week
# all_trips$ride_length <- difftime(all_trips$ended_at, all_trips$started_at)

# Remove "bad" data (negative rides or test stations)
# all_trips_v2 <- all_trips %>% 
#   filter(ride_length > 0) %>% 
#   filter(start_station_name != "HQ QR")

# 4. ANALYSIS: SUMMARY STATISTICS
# Compare members and casual users
# aggregate(all_trips_v2$ride_length ~ all_trips_v2$member_casual, FUN = mean)
# aggregate(all_trips_v2$ride_length ~ all_trips_v2$member_casual, FUN = median)
# aggregate(all_trips_v2$ride_length ~ all_trips_v2$member_casual, FUN = max)

# 5. VISUALIZATION
# Plot: Rides by Day of Week
# all_trips_v2 %>% 
#   mutate(weekday = wday(started_at, label = TRUE)) %>% 
#   group_by(member_casual, weekday) %>% 
#   summarise(number_of_rides = n(), average_duration = mean(ride_length)) %>% 
#   arrange(member_casual, weekday)  %>% 
#   ggplot(aes(x = weekday, y = number_of_rides, fill = member_casual)) +
#   geom_col(position = "dodge") +
#   labs(title = "Total Rides by User Type and Day of Week",
#        subtitle = "Members dominate weekdays, Casuals dominate weekends")