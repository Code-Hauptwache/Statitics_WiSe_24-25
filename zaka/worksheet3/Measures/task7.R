# Task 7
# Inspect dataset description
?mpg

# Select only the relevant columns
mpg_subset <- mpg[, c("displ", "hwy")]

# Classify `displ` into "low", "medium", "big" using cut()
mpg_subset$displ_class <- cut(mpg_subset$displ,
                              breaks = c(1, 3, 5, 8),  # Break points
                              labels = c("low", "medium", "big"),  # Group labels
                              include.lowest = TRUE)

# View the resulting data
head(mpg_subset)

# Split the data by displ_class
grouped_data <- split(mpg_subset$hwy, mpg_subset$displ_class)

# Apply summary statistics for each group
summary_stats <- lapply(grouped_data, function(x) {
  list(
    Mean = mean(x, na.rm = TRUE),
    Min = min(x, na.rm = TRUE),
    Q1 = quantile(x, 0.25, na.rm = TRUE),
    Median = median(x, na.rm = TRUE),
    Q3 = quantile(x, 0.75, na.rm = TRUE),
    Max = max(x, na.rm = TRUE)
  )
})

# Display the results
for (group in names(summary_stats)) {
  cat("\nDisplacement Class:", group, "\n")
  print(summary_stats[[group]])
}


# Create a boxplot for `hwy` grouped by `displ_class`
boxplot(hwy ~ displ_class, 
        data = mpg_subset, 
        main = "Boxplot of Highway MPG by Engine Displacement Class", 
        xlab = "Displacement Class", 
        ylab = "Highway MPG", 
        col = c("lightblue", "lightgreen", "lightpink"))
