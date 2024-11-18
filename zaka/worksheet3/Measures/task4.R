# Task 4
# Define the data
data <- c(4, 3, 2, 4, 10)

# (a) Mean
mean_value <- mean(data)
cat("(a) Mean:", mean_value, "\n")

# (b) Median
median_value <- median(data)
cat("(b) Median:", median_value, "\n")

# (c) Mode
# Mode function to find the most frequently occurring value
mode_value <- as.numeric(names(sort(table(data), decreasing = TRUE)[1]))
cat("(c) Mode:", mode_value, "\n")

# (d) 20%-quantile
quantile_20 <- quantile(data, 0.20)
cat("(d) 20%-quantile:", quantile_20, "\n")

# (e) Trimmed 40% mean
# Trim 20% from each end (40% total trimmed)
trimmed_mean_40 <- mean(data, trim = 0.20)
cat("(e) Trimmed 40% Mean:", trimmed_mean_40, "\n")
