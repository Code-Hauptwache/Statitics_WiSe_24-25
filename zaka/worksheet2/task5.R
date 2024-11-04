#Task 5
# Load the libraries tidyverse and nycflight13 and inspect the variable of flights.
library(tidyverse)
library(nycflights13)
str(flights)

# Find all flights with more than 2 hours arrival delay.
flights_with_delay <- flights %>% filter(arr_delay > 120)
