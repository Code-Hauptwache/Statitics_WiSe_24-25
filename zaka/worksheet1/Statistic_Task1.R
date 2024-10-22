# Task 1
sum(52.3, 74.8, 3.17)
sqrt(144)
log10(200*sin(pi/4))
log(200*sin(pi/4), 10)
cumsum(c(1, 3, 18, 20, 2))
sample(0:20, size = 10, replace = TRUE)

# Task 2
x <- 5
y <- 10
z <- x*y
myvec <- c(x, y, z)
min(myvec)
max(myvec)
mean(myvec)
rm(myvec)

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

