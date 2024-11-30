# Task 1
# Consider the following datasets
library(tidyverse)

student1 <- tibble(
  student = c("Adam","Bernd","Christian","Doris"),
  algebra = c(NA, 5, 3, 4),
  analysis = c(2, NA, 1,3),
  diskrete.math = c(3,NA,2,4),
)

student2 <- tibble(
  name = rep(c("Adam", "Bernd", "Christian", "Doris"), each = 2),
  type = rep(c("height", "weight"), 4),
  measure = c(1.83, 81, 1.75, 71, 1.69, 55, 1.57, 62))

student3 <- tibble(
  name = c("Adam", "Bernd", "Christian", "Doris"),
  ratio = c("81/1.83", "71/1.75", "55/1.69", "62/1.57"))
 
# (a) Describe for every dataset what the dataset contains? What are the variables and what are the observations?
# The student1 dataset contains name and grades of various math classes of multiple students
#   Variables: student, algebra, analysis, dikrete.math
#   Observation: Each row represents a student, and each entry in the subject columns represents their grade for that specific subject. NA values indicate missing grades. 

# The student2 dataset contains the names of students along with two physical measurements (height and weight).
#   Variables: name, type, measure
#   Observation: Each row is an individual measurement (either height or weight) for each student. Each student has two rows in the dataset, one for height and one for weight.

# The student3 dataset contains the names of students and their height-to-weight ratio as a string.
#   Variables: name, ratio
#   Observation: Each row represents a student with their corresponding height-to-weight ratio calculated as weight divided by height.

# (b) Why are these datasets are not tidy?
# They are misleading and redundant scinse the different datasets (studen1/2/3) do not mean individual students, but hold information of multiple students and these data sets are redundant because in everey dataset the names of the sutdents are reapated.

# (c) Make a tidy version of all datasets.
students <- tibble(
  student = c("Adam","Bernd","Christian","Doris"),
  algebra = c(NA, 5, 3, 4),
  analysis = c(2, NA, 1,3),
  diskrete.math = c(3,NA,2,4),
  height = c(1.83, 1.75, 1.69, 1.57),
  wieght = c(81, 71, 55, 52),
  ratio = c("81/1.83", "71/1.75", "55/1.69", "62/1.57")
)
