# Task 4
library(tidyverse)
  
no <- 30
exercise.results <- tibble(
  stud.id = 1:no,
  group = sample(x=c("A","B","C"), size=no, replace = TRUE),
  ex1 = sample(x=1:10, size=no, replace = TRUE),
  ex2= sample(x=1:10, size=no, replace = TRUE),
  ex3 = sample(x=1:10, size=no, replace = TRUE),
  ex4 = sample(x=1:10, size=no, replace = TRUE),
  ex5 = sample(x=1:10, size=no, replace = TRUE)
)

# (a) Apply n() and count() to get the number of students in the different groups. What are the difference between n() and count()?
exercise.results %>% count(group)

exercise.results %>% 
  group_by(group) %>% 
  summarise(n())

# `n()` counts rows within groups when used inside other functions. `count()` is a standalone function that directly counts occurrences in a column.

# (b) Add the variables sum.scores and mean.scores containing the sum and the of the scores in the exercises for every student by applying the the functions sum() and mean(). What is the result if rowwise() is appplied before the mutate()?
exercise.results <- exercise.results %>%
  mutate(
    sum.scores = rowSums(across(starts_with("ex"))),
    mean.scores = rowMeans(across(starts_with("ex")))
  )
