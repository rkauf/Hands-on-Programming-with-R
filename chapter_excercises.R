library(tidyverse)

# Chapter 2 

die <- 1:6
sample(die, size = 2, replace = TRUE)

roll <- function() {
  die <- 1:6
  dice <- sample(die, size = 2, replace = TRUE)
  sum(dice)
}

roll()

# Chapter 3

rolls <- replicate(10000, roll())

qplot(rolls, binwidth = 1) 

# weighted die

roll <- function() {
  die <- 1:6
  dice <- sample(die, size = 2, replace = TRUE, 
                 prob = c(1/8, 1/8, 1/8, 1/8, 1/8, 3/8))
  sum(dice)
}

rolls <- replicate(10000, roll())
qplot(rolls, binwidth = 1)

# Chapter 4