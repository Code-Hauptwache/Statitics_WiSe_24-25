# Task 1
# (a) Same Mean but Different Standard Deviations
dataset_a1 <- c(5, 5, 5, 5, 5)  # Standard deviation = 0
dataset_a2 <- c(3, 5, 5, 5, 7)  # Higher standard deviation

mean_a1 <- mean(dataset_a1)
sd_a1 <- sd(dataset_a1)

mean_a2 <- mean(dataset_a2)
sd_a2 <- sd(dataset_a2)

cat("Dataset (a): Same Mean but Different Standard Deviations\n")
cat("Dataset 1 - Mean:", mean_a1, ", SD:", sd_a1, "\n")
cat("Dataset 2 - Mean:", mean_a2, ", SD:", sd_a2, "\n\n")


# (b) Same Mean but Different Medians
dataset_b1 <- c(2, 4, 6, 8, 10)  # Median = 6
dataset_b2 <- c(1, 6, 6, 6, 9)   # Median = 6

mean_b1 <- mean(dataset_b1)
median_b1 <- median(dataset_b1)

mean_b2 <- mean(dataset_b2)
median_b2 <- median(dataset_b2)

cat("Dataset (b): Same Mean but Different Medians\n")
cat("Dataset 1 - Mean:", mean_b1, ", Median:", median_b1, "\n")
cat("Dataset 2 - Mean:", mean_b2, ", Median:", median_b2, "\n\n")


# (c) Same Median but Different Means
dataset_c1 <- c(1, 5, 5, 5, 9)   # Mean ≈ 5
dataset_c2 <- c(3, 4, 5, 6, 7)   # Mean = 5

mean_c1 <- mean(dataset_c1)
median_c1 <- median(dataset_c1)

mean_c2 <- mean(dataset_c2)
median_c2 <- median(dataset_c2)

cat("Dataset (c): Same Median but Different Means\n")
cat("Dataset 1 - Mean:", mean_c1, ", Median:", median_c1, "\n")
cat("Dataset 2 - Mean:", mean_c2, ", Median:", median_c2, "\n")