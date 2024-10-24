# Task 6
# Construct a matrix with 8 rows and 10 columns. The first row should contain the numbers 0, 2, 4, ..., 18 and the other rows should random integer numbers between 0 and 10. Use runif() to create the random numbers and as.integer() to transform to integers.
myMatrix <- matrix(data = NA, nrow = 8, ncol = 10)
myMatrix[1, ] <- seq(0, 18, by = 2)
myMatrix[2:8,] <- as.integer(runif(70, min = 0, max = 11))

# Calculate the row means of this matrix (use rowMeans()) and the standard deviation across the row means.
matrixRowMeans <- rowMeans(myMatrix)
matrixRowMeans_sd <- sd(matrixRowMeans)

# Store the rows 2,3,..,8 in a other matrix and calculate the column means (use colMeans()). Use the command hist() to create a histogram of the column means.
myMatrix2 <- myMatrix[2:8, ]
matrixColMeans <- colMeans(myMatrix2)
hist(matrixColMeans)

