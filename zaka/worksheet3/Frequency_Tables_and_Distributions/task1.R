# Task 1
# Election results data
party <- c("CDU", "SPD", "AfD", "FDP", "DIE LINKE", "GRUENE", "CSU", "Others")
results_2013 <- c(26.8, 20.5, 12.6, 10.7, 9.2, 8.9, 6.2, 5.0)
results_2017 <- c(34.1, 25.7, 4.7, 4.8, 8.6, 8.4, 7.4, 6.2)

# Pie chart for 2017 results
pie(results_2017, labels = party, main = "2017 German National Election Results (%)")

library(ggplot2)

# Prepare data frame for ggplot
election_data <- data.frame(
  Party = rep(party, each = 2),
  Year = rep(c("2013", "2017"), times = length(party)),
  Result = c(results_2013, results_2017)
)

# Bar chart comparing 2013 and 2017 results
ggplot(election_data, aes(x = Party, y = Result, fill = Year)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Comparison of 2013 and 2017 German National Election Results",
       x = "Party", y = "Result (%)") +
  theme_minimal()
