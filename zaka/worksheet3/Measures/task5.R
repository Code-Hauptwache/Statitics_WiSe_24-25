# Task 5
# Define the data for each group
non_player <- c(22.1, 22.3, 26.2, 29.6, 31.7, 33.5, 38.9, 39.7, 43.2, 43.2)
beginner <- c(32.5, 37.1, 39.1, 40.5, 45.5, 51.3, 52.6, 55.7, 55.9, 57.7)
tournament <- c(40.1, 45.6, 51.2, 56.4, 58.1, 71.1, 74.9, 75.9, 80.3, 85.3)

# Create a function to compute descriptive statistics
summary_stats <- function(data) {
  list(
    Mean = mean(data),
    Median = median(data),
    Min = min(data),
    Max = max(data),
    Quartiles = quantile(data),
    IQR = IQR(data),
    Variance = var(data)
  )
}

# Compute and display statistics for each group
cat("Non-Player Group:\n")
print(summary_stats(non_player))
cat("\nBeginner Group:\n")
print(summary_stats(beginner))
cat("\nTournament Group:\n")
print(summary_stats(tournament))

# Combine data into a data frame for plotting
group_data <- data.frame(
  Score = c(non_player, beginner, tournament),
  Group = factor(rep(c("Non-Player", "Beginner", "Tournament"), each = 10))
)

# Load ggplot2 for plotting
library(ggplot2)

# Create side-by-side box plots
ggplot(group_data, aes(x = Group, y = Score)) +
  geom_boxplot() +
  labs(title = "Performance Comparison of Chess Memory by Group",
       x = "Group",
       y = "Number of Pieces Remembered") +
  theme_minimal()
