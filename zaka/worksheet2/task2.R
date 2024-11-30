# Task 2
# Calculate the value of sin(log(√5 + 3)) directly and using the % > %-operator.
sin(log(sqrt(5+3)))

sqrt(5+3) %>% log() %>% sin()

# Define a vector v with values 0.5,1,1.5,...,5 and calculate the by 2 digits rounded sum of the logarithms of the squared values of v with nested operations and using the % > %-operator.
v <- c(seq(from = 0.5, to = 5, by = 0.5))
v^2 %>% log() %>% sum() %>% round(digits = 2)
