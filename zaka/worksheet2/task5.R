#Task 5
# Load the libraries tidyverse and nycflight13 and inspect the variable of flights.
library(tidyverse)
library(nycflights13)
str(flights)

# Find all flights with more than 2 hours arrival delay.
flights %>% 
  filter(arr_delay > 120)

# Find all flights with more than 2 hours arrival delay and no departure delay.
flights %>% 
  filter(arr_delay > 120,
         dep_delay == 0)

# Find all flights from United, American, and Delta with no arrival delay
flights %>%
  filter(carrier %in% c("UA", "AA", "DL"),
         arr_delay == 0)

# Find all flights from United, American and Delta in the month May with more than 5 hours arrival delay sorted by carrier and flight number.
flights %>%
  filter(
    carrier %in% c("UA", "AA", "DL"),
    month == 5,
    arr_delay > 300
  ) %>%
  arrange(carrier, flight)

# Exchange the values of departure time and arrvial time in minute after midnight. Example: departure time 722 given by HMinutes is in minutes after midnight 442!
