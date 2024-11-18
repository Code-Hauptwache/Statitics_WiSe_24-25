# Task 7
# Load ggplot2 package
library(ggplot2)

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
