# Task 3
rainfall <- c(0.1, 0.5, 2.3, 1.1, 11.3, 14.7, 23.4, 15.7, 0, 0.9)
mean(rainfall)
sd(rainfall)
cumsum(rainfall)
sum(rainfall)

which.max(rainfall)
which(rainfall == max(rainfall))
which(rainfall > 10)

mean(rainfall[rainfall >= 5])
which(rainfall == 0 | rainfall == 1.1)