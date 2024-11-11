# Task 2
# Initial investment
initial_value <- 1000

# Annual returns in percentages
annual_returns <- c(13, 22, 12, -5, -13) / 100  # Convert percentages to decimal

# Calculate portfolio value each year
portfolio_values <- initial_value * cumprod(1 + annual_returns)

# Display the portfolio values after each year
cat("Portfolio values after each year:\n")
for (i in 1:length(portfolio_values)) {
  cat("Year", i, ":", portfolio_values[i], "\n")
}

# (b) Compute the annual rate of return using the geometric mean
n <- length(annual_returns)
geometric_mean_return <- (prod(1 + annual_returns))^(1 / n) - 1

cat("\nAnnual rate of return (geometric mean):", geometric_mean_return * 100, "%\n")

# (c) Interpretation for expected returns
cat("\n(c) Interpretation:\n")
cat("Based on the geometric mean, we could expect a similar average annual return for the next two years.\n")
cat("However, predicting 20 years later may be unreliable, as market conditions can vary significantly.\n")
