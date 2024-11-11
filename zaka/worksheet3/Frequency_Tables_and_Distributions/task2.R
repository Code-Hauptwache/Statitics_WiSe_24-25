# Task 2
# Input the data
times <- c(568, 577, 577, 581, 640, 641, 645, 657, 673, 696, 703, 720, 728, 728, 728, 729, 777, 808, 824, 825, 865, 975, 1007, 1007)

# Load necessary library
library(ggplot2)

# Sort the data
sorted_times <- sort(times)

# Compute cumulative frequency
cumulative_freq <- cumsum(table(sorted_times)) / length(times)

# Create a data frame for plotting
cum_freq_df <- data.frame(
  Time = as.numeric(names(cumulative_freq)),
  CumulativeFrequency = cumulative_freq
)

# Plot cumulative frequency distribution
ggplot(cum_freq_df, aes(x = Time, y = CumulativeFrequency)) +
  geom_step() +
  labs(title = "Cumulative Frequency Distribution of Response Times",
       x = "Time (ms)", y = "Cumulative Frequency") +
  theme_minimal()

# Calculate the proportions

# i. Proportion of times <= 800
prop_less_equal_800 <- sum(times <= 800) / length(times)

# ii. Proportion of times > 725
prop_greater_725 <- sum(times > 725) / length(times)

# iii. Proportion of times > 642 and <= 777
prop_between_642_777 <- sum(times > 642 & times <= 777) / length(times)

# iv. Proportion of times equal to 696
prop_equal_696 <- sum(times == 696) / length(times)

# Define classes
breaks1 <- seq(500, 1100, by = 100)

# Grouped frequency distribution
grouped_freq1 <- cut(times, breaks = breaks1)
grouped_freq_table1 <- table(grouped_freq1)

# Plot histogram for the grouped data
hist(times, breaks1, main = "Grouped Frequency Distribution (Equal Widths)", xlab = "Times (ms)", ylab = "Frequency")

# Define new classes with unequal width
breaks2 <- c(500, 600, 900, 1000, 1200)

# Grouped frequency distribution
grouped_freq2 <- cut(times, breaks = breaks2, right = TRUE)
grouped_freq_table2 <- table(grouped_freq2)

# Plot histogram for the grouped data with unequal width classes
hist(times, breaks2, main = "Grouped Frequency Distribution (Unequal Widths)", xlab = "Times (ms)", ylab = "Frequency", yaxt = "n")

