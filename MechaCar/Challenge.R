library(dplyr)

cars <- read.csv("MechaCar_mpg.csv")

lm(cars)
summary(lm(cars))
