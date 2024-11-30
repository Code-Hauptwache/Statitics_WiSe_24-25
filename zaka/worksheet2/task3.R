# Task 3
library(tidyverse)

df <- tibble(id = 1:10,
             sex = sample(x = c("f", "m"), size = 10, replace = TRUE),
             age = round(runif(10, 20, 25)),
             score1 = round(runif(10, 0, 25)))

maleStudents <- df %>% filter(sex == "m")

df <- df %>% add_row(id = 11, sex = "m", age = 25, score1 = 4)

df <- df %>% mutate(score2 = round(runif(nrow(df), 0, 25)),
                    score3 = round(runif(nrow(df), 0, 25)))

df <- df %>% mutate(scoreSum = score1 + score2 + score3)

df <- df %>% 
  mutate(grade = case_when(
    scoreSum <= 37 ~ 5,
    scoreSum > 37 & scoreSum <= 45 ~ 4,
    scoreSum > 45 & scoreSum <= 55 ~ 3,
    scoreSum > 55 & scoreSum <= 65 ~ 2,
    scoreSum > 65 ~ 1
  ))

passed_students <- df %>%
  filter(grade <= 4) %>%
  select(id, sex, grade) %>%
  arrange(sex)

score_summary <- df %>%
  group_by(sex) %>%
  summarise(
    mean_score = mean(scoreSum),
    min_score = min(scoreSum),
    max_score = max(scoreSum),
    median_score = median(scoreSum)
  )
