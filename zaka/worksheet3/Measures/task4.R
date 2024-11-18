# Task 4
# Data input
number <- c(1, 2, 3, 4, 5, 6, 7, 8)
frequency <- c(5, 4, 1, 7, 2, 3, 1, 2)

# Create the full dataset
data <- rep(number, frequency)

# Arithmetic mean
arithmetic_mean <- mean(data)
print(paste("Arithmetic Mean:", arithmetic_mean))

# Geometric mean
geometric_mean <- exp(mean(log(data)))
print(paste("Geometric Mean:", geometric_mean))

# Harmonic mean
harmonic_mean <- length(data) / sum(1 / data)
print(paste("Harmonic Mean:", harmonic_mean))

# Trimmed mean (20%)
trimmed_mean <- mean(data, trim = 0.2)
print(paste("Trimmed 20% Mean:", trimmed_mean))
