# Task 7
# The R dataset mpg
#   (a) Inspect the dataset mpg.
library(tidyverse)
head(mpg)
data(mpg)

#   (b) Determine the types and the scales of measurement of all variables in the dataset mpg. Further more determine whether the variables are discret or continous.
str(mpg)
 # $ manufacturer: chr [1:234] "audi" "audi" "audi" "audi" ... - **DISCRETE**
 # $ model       : chr [1:234] "a4" "a4" "a4" "a4" ... - **DISCRETE**
 # $ displ       : num [1:234] 1.8 1.8 2 2 2.8 2.8 3.1 1.8 1.8 2 ... - **CONTINUOUS**
 # $ year        : int [1:234] 1999 1999 2008 2008 1999 1999 2008 1999 1999 2008 ... - **DISCRETE**
 # $ cyl         : int [1:234] 4 4 4 4 6 6 6 4 4 4 ... - **DISCRETE**
 # $ trans       : chr [1:234] "auto(l5)" "manual(m5)" "manual(m6)" "auto(av)" ... - **DISCRETE**
 # $ drv         : chr [1:234] "f" "f" "f" "f" ... - **DISCRETE**
 # $ cty         : int [1:234] 18 21 20 21 16 18 18 18 16 20 ... - **CONTINUOUS**
 # $ hwy         : int [1:234] 29 29 31 30 26 26 27 26 25 28 ... - **CONTINUOUS**
 # $ fl          : chr [1:234] "p" "p" "p" "p" ... - **DISCRETE**
 # $ class       : chr [1:234] "compact" "compact" "compact" "compact" ... - **DISCRETE**